private var isChangeMap:Boolean;

if(!this.isChangeMap)
                  {
                     param1.game.changeMap(param1.main,param1,7);
                     trace("~change map buddy~");
                     this.isChangeMap = true;
                  }
                  param1.game.team.cleanUpUnits();
                  param1.game.team.enemyTeam.cleanUpUnits();
