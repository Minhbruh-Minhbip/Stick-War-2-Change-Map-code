public function changeMap(param1:BaseMain, param2:GameScreen, param3:int = -1) : void
      {
         gameOver = this.showGameOverAnimation = false;
         ++param1.loadingFraction;
         this.battlefield.removeChildren();
         ++param1.loadingFraction;
         if(this.fogOfWar && this.contains(this.fogOfWar))
         {
            removeChild(this.fogOfWar);
         }
         this.fogOfWar = null;
         ++param1.loadingFraction;
         if(this._background && this.contains(this._background))
         {
            this.removeChild(this._background);
            this._background = null;
         }
         this._map = null;
         ++param1.loadingFraction;
         isReplay = false;
         this._gameScreen = param2;
         this.commandFactory = new CommandFactory(this);
         ++param1.loadingFraction;
         this.mapId = param3;
         this._random = new Random(param1.seed);
         ++param1.loadingFraction;
         if(!this._incomeDisplay)
         {
            this._incomeDisplay = new IncomeDisplay(this);
         }
         ++param1.loadingFraction;
         param2.isDebug = this._xml.xml.debug;
         GRAVITY = this._xml.xml.gravity;
         _frontScale = this._xml.xml.frontScale;
         _backScale = this._xml.xml.backScale;
         winner = null;
         this._currentId = 0;
         this._postCursors = [];
         ++param1.loadingFraction;
         this._map = Map.getMapFromId(param3,this);
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
         if(!this._rain)
         {
            this._rain = new Rain(this,0);
         }
         ++param1.loadingFraction;
         this._battlefield = new Sprite();
         this._battlefield.x = 0;
         this._battlefield.y = this._map.y;
         ++param1.loadingFraction;
         this.shadowClip.x = 0;
         this.shadowClip.y = this.map.y;
         this.shadowClip.alpha = 0.5;
         var _loc4_:BlurFilter = new BlurFilter();
         _loc4_.blurX = _loc4_.blurY = 12;
         _loc4_.quality = 1;
         addChild(this.shadowClip);
         ++param1.loadingFraction;
         if(!this._bloodManager)
         {
            this._bloodManager = new BloodManager();
         }
         this._bloodManager.y = this.battlefield.y;
         addChild(this._bloodManager);
         addChild(this._battlefield);
         addChild(this._rain);
         ++param1.loadingFraction;
         this._rain.mouseEnabled = false;
         this._cursorSprite.mouseChildren = false;
         this._cursorSprite.mouseEnabled = false;
         addChild(this.tipBox);
         this._rain.mouseChildren = false;
         ++param1.loadingFraction;
         this._spatialHash = new SpatialHash(this,this.map.width,this.map.height,50,this.map.height / 7,100);
         ++param1.loadingFraction;
         ++param1.loadingFraction;
         this._inEconomy = false;
         this._map.addElementsToMap(this);
         this.isDebug = this.xml.xml.debug == 1;
         this.soundLoader = param1.soundLoader;
         this.soundManager = param1.soundManager;
         this.pausedGameMc = new gamePausedDisplay();
         this.pausedGameMc.x = stage.stageWidth / 2;
         this.pausedGameMc.y = stage.stageHeight / 2;
         this.pausedGameMc.visible = false;
         addChild(this.pausedGameMc);
         ++param1.loadingFraction;
         this._teamA.homeX = this._teamA.direction * this.map.screenWidth;
         ++param1.loadingFraction;
         this._teamB.homeX = this.map.width + this._teamB.direction * this.map.screenWidth;
         ++param1.loadingFraction;
         this.battlefield.addChild(this._teamA.castleBack);
         ++param1.loadingFraction;
         this.battlefield.addChild(this._teamB.castleBack);
         ++param1.loadingFraction;
         var _loc5_:Statue = new Statue(new _statueMc(),this,1500);
         this.units[_loc5_.id] = _loc5_;
         this._teamA.statue = _loc5_;
         this.battlefield.addChild(this._teamA.statue);
         ++param1.loadingFraction;
         var _loc6_:Statue = new Statue(new _statueMc(),this,1500);
         this.units[_loc6_.id] = _loc6_;
         this._teamB.statue = _loc6_;
         this.battlefield.addChild(this._teamB.statue);
         ++param1.loadingFraction;
         this._teamA.statue.scaleX *= this._teamA.direction;
         ++param1.loadingFraction;
         this._teamB.statue.scaleX *= this._teamB.direction;
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
         this._teamB.statue.forceFaceDirection(-1);
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
         this._teamA.direction = 1;
         ++param1.loadingFraction;
         this._teamB.direction = -1;
         ++param1.loadingFraction;
         this.targetScreenX = this._screenX = this.teamA.statue.px;
         ++param1.loadingFraction;
         this.postInit();
         ++param1.loadingFraction;
      }
