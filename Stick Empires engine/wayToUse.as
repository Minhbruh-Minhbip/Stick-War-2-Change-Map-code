// one-time use
private var isChangeMap:Boolean;
if(!this.isChangeMap)
               {
                  iceWorld(param1);
               }

// use by frequency (recommended from 3 seconds or more)
if(param1.game.frame % (30 * seconds) == 0)
               {
                  ramdomMap(param1);
               }

