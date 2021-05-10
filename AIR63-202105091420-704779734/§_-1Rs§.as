package §_-1yt§
{
   import §_-0Jn§.§_-2Jq§;
   import §_-3pr§.§_-2o5§;
   import §_-b5§.LayoutGroup;
   import §_-b5§.§_-1jG§;
   import starling.core.Starling;
   import starling.events.Event;
   
   public class §_-1Rs§ extends LayoutGroup
   {
      
      private static const §_-6z§:String = "/api/public/captcha";
      
      private static const §_-fF§:String = "token=";
       
      
      private var _controller:§_-1Be§;
      
      private var §_-3EU§:§_-1jG§;
      
      public function §_-1Rs§(param1:§_-1Be§)
      {
         super();
         _controller = param1;
         var _loc3_:String = _controller.getProperty("web.api") + "/api/public/captcha";
         this.width = Starling.current.stage.stageWidth;
         this.height = Starling.current.stage.stageHeight;
         var _loc2_:int = HitchTheme.§_-431§ * 4;
         §_-3EU§ = new §_-1jG§();
         §_-3EU§.x = _loc2_;
         §_-3EU§.y = HitchTheme.§_-431§;
         §_-3EU§.width = Starling.current.stage.stageWidth - _loc2_ * 2;
         §_-3EU§.height = Starling.current.stage.stageHeight - HitchTheme.§_-431§ * 2;
         §_-3EU§.loadString("<h1>Instructions</h1>Step 1: Go to <text style=\'background-color:#FFF696\'>habbo.com/api/public/captcha</text><br>Step 2: Complete the Captcha and copy the link address<br>Step 3: Paste the link here:<br<html><body> <input type=\'text\' id=\'txt\'/><input type=\'button\' id=\'btn\' value=\'Submit\'/> <script type=\'text/javascript\'> var newlink=document.getElementById(\'txt\');function redirect (){window.location.href=newlink.value;};document.getElementById(\'btn\').addEventListener(\'click\', redirect);document.getElementById(\'txt\').addEventListener(\'keydown\', function(e){if (e.keyCode==13){redirect();}}, false); </script></body></html>");
         addChild(§_-3EU§);
         §_-2o5§.§_-3Gz§(this,§_-8E§);
         §_-3EU§.addEventListener("locationChange",§_-3Si§);
         §_-2Jq§.§_-2aB§(this,true);
      }
      
      override public function dispose() : void
      {
         _controller = null;
         if(§_-2Jq§.§_-28i§(this))
         {
            §_-2Jq§.§_-Ae§(this);
         }
         if(§_-3EU§)
         {
            §_-3EU§.removeFromParent(true);
            §_-3EU§ = null;
         }
         super.dispose();
      }
      
      private function §_-3Si§(param1:Event) : void
      {
         var _loc2_:String = §_-43U§();
         if(param1.type == "locationChange" && _loc2_ != null)
         {
            _controller.§_-4Ma§(_loc2_);
         }
      }
      
      private function §_-8E§(param1:Event) : void
      {
         if(_controller)
         {
            _controller.§_-4Ma§(§_-43U§());
         }
      }
      
      private function §_-43U§() : String
      {
         var _loc1_:String = §_-3EU§.location;
         var _loc2_:int = _loc1_ != null ? _loc1_.indexOf("token=") : -1;
         if(_loc2_ < 0)
         {
            return null;
         }
         return _loc1_.substr(_loc2_ + "token=".length);
      }
   }
}
