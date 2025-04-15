public function changeMap(param1:BaseMain, param2:int = -1, param3:int = -1, param4:int = -1, param5:int = -1, param6:int = -1, param7:int = -1, param8:int = -1) : void
      {
         if(this.battlefield.contains(this._teamA.castleBack))
         {
            this.battlefield.removeChild(this._teamA.castleBack);
         }
         ++param1.loadingFraction;
         if(this.battlefield.contains(this._teamB.castleBack))
         {
            this.battlefield.removeChild(this._teamB.castleBack);
         }
         ++param1.loadingFraction;
         if(this.battlefield.contains(this._teamA.statue))
         {
            this.battlefield.removeChild(this._teamA.statue);
         }
         delete this._units[this._teamA.statue.id];
         ++param1.loadingFraction;
         if(this.battlefield.contains(this._teamB.statue))
         {
            this.battlefield.removeChild(this._teamB.statue);
         }
         delete this._units[this._teamB.statue.id];
         ++param1.loadingFraction;
         if(this.battlefield.contains(this._teamA.castleFront))
         {
            this.battlefield.removeChild(this._teamA.castleFront);
         }
         ++param1.loadingFraction;
         if(this.battlefield.contains(this._teamB.castleFront))
         {
            this.battlefield.removeChild(this._teamB.castleFront);
         }
         ++param1.loadingFraction;
         if(this.battlefield.contains(this._teamA.base))
         {
            this.battlefield.removeChild(this._teamA.base);
         }
         ++param1.loadingFraction;
         if(this.battlefield.contains(this._teamB.base))
         {
            this.battlefield.removeChild(this._teamB.base);
         }
         ++param1.loadingFraction;
         this._map.clearAllGold(this);
         ++param1.loadingFraction;
         if(this._background && this.contains(this._background))
         {
            this.removeChild(this._background);
            this._background = null;
            trace(this._background);
         }
         this._map = null;
         ++param1.loadingFraction;
         if(this.fogOfWar && this.contains(this.fogOfWar))
         {
            removeChild(this.fogOfWar);
         }
         ++param1.loadingFraction;
         this.mapId = param2;
         this._map = Map.getMapFromId(param2,this);
         this._map.addElementsToMap(this);
         ++param1.loadingFraction;
         this._battlefield.x = 0;
         this._battlefield.y = this._map.y;
         ++param1.loadingFraction;
         if(this._cursorSprite == null)
         {
            this._cursorSprite = new Entity();
            this._cursorSprite.py = this.map.height + 1;
            this._cursorSprite.graphics.beginFill(0,0);
            this._cursorSprite.graphics.drawRect(0,0,this.map.width,this.map.height);
            this._cursorSprite.x = 0;
            this._cursorSprite.y = this.map.y;
            this._cursorSprite.name = "cursorSprite";
         }
         ++param1.loadingFraction;
         ++param1.loadingFraction;
         if(this.background && this.contains(this.background))
         {
            setChildIndex(this.background,0);
         }
         setChildIndex(this._battlefield,3);
         setChildIndex(this.tipBox,4);
         ++param1.loadingFraction;
         this._teamA.homeX = this._teamA.direction * this.map.screenWidth;
         ++param1.loadingFraction;
         this._teamB.homeX = this.map.width + this._teamB.direction * this.map.screenWidth;
         ++param1.loadingFraction;
         this._teamA.direction = 1;
         ++param1.loadingFraction;
         this._teamB.direction = -1;
         ++param1.loadingFraction;
         this.battlefield.addChild(this._teamA.castleBack);
         ++param1.loadingFraction;
         this.battlefield.addChild(this._teamB.castleBack);
         ++param1.loadingFraction;
         _loc10_ = new Statue(new _statueMc(),this,param5);
         this.units[_loc10_.id] = _loc10_;
         this._teamA.statue = _loc10_;
         this.battlefield.addChild(this._teamA.statue);
         ++param1.loadingFraction;
         var _loc10_:Statue = new Statue(new _statueMc(),this,param6);
         this.units[_loc10_.id] = _loc10_;
         this._teamB.statue = _loc10_;
         this.battlefield.addChild(this._teamB.statue);
         ++param1.loadingFraction;
         this._teamA.statue.x = this._teamA.homeX + this._teamA.direction * 500;
         this._teamA.statue.py = this._teamA.game.map.height / 2;
         this._teamA.statue.px = this._teamA.statue.x;
         this._teamA.statue.y = this._teamA.statue.py;
         this._teamA.statue.health = param7;
         ++param1.loadingFraction;
         this._teamB.statue.x = this._teamB.homeX + this._teamB.direction * 500;
         this._teamB.statue.py = this._teamB.game.map.height / 2;
         this._teamB.statue.px = this._teamB.statue.x;
         this._teamB.statue.y = this._teamB.statue.py;
         this._teamB.statue.health = param8;
         ++param1.loadingFraction;
         this._teamA.statue.scaleX *= this._teamA.direction;
         ++param1.loadingFraction;
         this._teamB.statue.scaleX *= this._teamA.direction;
         ++param1.loadingFraction;
         this.battlefield.addChild(this._teamA.castleFront);
         ++param1.loadingFraction;
         this.battlefield.addChild(this._teamB.castleFront);
         ++param1.loadingFraction;
         this.battlefield.addChild(this._teamA.base);
         ++param1.loadingFraction;
         this.battlefield.addChild(this._teamB.base);
         ++param1.loadingFraction;
         this._teamB.castleBack.scaleX *= this._teamB.direction;
         ++param1.loadingFraction;
         this._teamB.castleBack.px = this._teamB.statue.x;
         ++param1.loadingFraction;
         this._teamB.castleBack.scaleX *= 1;
         ++param1.loadingFraction;
         this._teamB.castleFront.x = this._teamB.homeX + 850;
         ++param1.loadingFraction;
         this._teamB.castleFront.y = -this.battlefield.y;
         ++param1.loadingFraction;
         this._teamB.castleFront.py = this.map.height / 2 + 40;
         ++param1.loadingFraction;
         this._teamB.castleFront.scaleX *= this._teamB.direction;
         ++param1.loadingFraction;
         this._teamB.base.mouseEnabled = true;
         ++param1.loadingFraction;
         this._teamB.castleFront.cacheAsBitmap = true;
         ++param1.loadingFraction;
         this._teamB.castleBack.cacheAsBitmap = true;
         ++param1.loadingFraction;
         this._teamB.statue.cacheAsBitmap = true;
         ++param1.loadingFraction;
         this._teamB.statue.team = this._teamB;
         ++param1.loadingFraction;
         this._teamA.base.mouseEnabled = true;
         ++param1.loadingFraction;
         this._teamA.castleFront.cacheAsBitmap = true;
         ++param1.loadingFraction;
         this._teamA.castleBack.cacheAsBitmap = true;
         ++param1.loadingFraction;
         this._teamA.statue.cacheAsBitmap = true;
         ++param1.loadingFraction;
         this._teamA.statue.team = this._teamA;
         ++param1.loadingFraction;
         this._teamA.init();
         ++param1.loadingFraction;
         this._teamB.init();
         ++param1.loadingFraction;
         this._map.addCombiners(this);
         ++param1.loadingFraction;
         this._teamA.name = 0;
         ++param1.loadingFraction;
         this._teamB.name = 1;
         ++param1.loadingFraction;
         this._teamA.population = param3;
         ++param1.loadingFraction;
         this._teamB.population = param4;
         ++param1.loadingFraction;
         this.postInit();
         var _loc11_:Unit = null;
         for each(_loc11_ in this._teamA.units)
         {
            this._battlefield.setChildIndex(_loc11_,this._battlefield.numChildren - 1);
         }
         for each(_loc11_ in this._teamA.castleDefence.units)
         {
            this._battlefield.setChildIndex(_loc11_,this._battlefield.numChildren - 1);
         }
         var _loc12_:Unit = null;
         for each(_loc12_ in this._teamB.units)
         {
            this._battlefield.setChildIndex(_loc12_,this._battlefield.numChildren - 1);
         }
         for each(_loc12_ in this._teamB.castleDefence.units)
         {
            this._battlefield.setChildIndex(_loc12_,this._battlefield.numChildren - 1);
         }
         var i:int = 0;
         while(i < this.numChildren)
         {
            trace(i + ": " + this.getChildAt(i));
            i++;
         }
         ++param1.loadingFraction;
      }