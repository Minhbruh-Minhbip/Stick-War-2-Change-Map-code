package com.brockw.stickwar.campaign.controllers
{
   import com.brockw.game.*;
   
   public class CampaignController
   {
      
      public function CampaignController(param1:GameScreen)
      {
         super();
      }
      
      public function update(param1:GameScreen) : void
      {
      }
      
      protected function ramdomMap(param1:GameScreen) : void
      {
         param1.game.changeMap(param1.main,int(Math.floor(Math.random() * 9)),param1.game.team.population,param1.game.team.enemyTeam.population,param1.team.statue.maxHealth,param1.team.enemyTeam.statue.maxHealth,param1.team.statue.health,param1.team.enemyTeam.statue.health);
      }

      protected function iceWorld(param1:GameScreen) : void
      {
         trace("Ice World")
         param1.game.changeMap(param1.main,0,param1.game.team.population,param1.game.team.enemyTeam.population,param1.team.statue.maxHealth,param1.team.enemyTeam.statue.maxHealth,param1.team.statue.health,param1.team.enemyTeam.statue.health);
      }

      protected function grassHills(param1:GameScreen) : void
      {
         trace("Grass Hills")
         param1.game.changeMap(param1.main,1,param1.game.team.population,param1.game.team.enemyTeam.population,param1.team.statue.maxHealth,param1.team.enemyTeam.statue.maxHealth,param1.team.statue.health,param1.team.enemyTeam.statue.health);
      }

      protected function swampLands(param1:GameScreen) : void
      {
         trace("Swamp Lands")
         param1.game.changeMap(param1.main,2,param1.game.team.population,param1.game.team.enemyTeam.population,param1.team.statue.maxHealth,param1.team.enemyTeam.statue.maxHealth,param1.team.statue.health,param1.team.enemyTeam.statue.health);
      }
   }
}
