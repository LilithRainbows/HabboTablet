package §_-0xU§
{
   import §_-00I§.LayoutGroup;
   import §_-00I§.§_-Eh§;
   import §_-29Q§.§_-3Pe§;
   import §_-4UF§.§_-3s6§;
   import starling.core.Starling;
   import starling.events.Event;
   
   public class §_-3VC§ extends LayoutGroup
   {
      
      private static const §_-2i-§:String = "/api/public/captcha";
      
      private static const §_-4Z2§:String = "token=";
       
      
      private var _controller:§_-0Yv§;
      
      private var §_-077§:§_-Eh§;
      
      public function §_-3VC§(param1:§_-0Yv§)
      {
         super();
         _controller = param1;
         var _loc3_:String = _controller.getProperty("web.api") + "/api/public/captcha";
         this.width = Starling.current.stage.stageWidth;
         this.height = Starling.current.stage.stageHeight;
         var _loc2_:int = HitchTheme.§_-2WP§ * 4;
         §_-077§ = new §_-Eh§();
         §_-077§.x = _loc2_;
         §_-077§.y = HitchTheme.§_-2WP§;
         §_-077§.width = Starling.current.stage.stageWidth - _loc2_ * 2;
         §_-077§.height = Starling.current.stage.stageHeight - HitchTheme.§_-2WP§ * 2;
         §_-077§.loadString("<h1>Instructions</h1>Step 1: Go to <text style=\'background-color:#FFF696\'>habbo.com/api/public/captcha</text><br>Step 2: Complete the Captcha and copy the link address<br>Step 3: Paste the link here:<br<html><body> <input type=\'text\' id=\'txt\'/><input type=\'button\' id=\'btn\' value=\'Submit\'/> <script type=\'text/javascript\'> var newlink=document.getElementById(\'txt\');function redirect (){window.location.href=newlink.value;};document.getElementById(\'btn\').addEventListener(\'click\', redirect);document.getElementById(\'txt\').addEventListener(\'keydown\', function(e){if (e.keyCode==13){redirect();}}, false); </script></body></html>");
         addChild(§_-077§);
         §_-3Pe§.§_-3hd§(this,§_-2an§);
         §_-077§.addEventListener("locationChange",§_-4eV§);
         §_-3s6§.§_-K6§(this,true);
      }
      
      override public function dispose() : void
      {
         _controller = null;
         if(§_-3s6§.§_-11C§(this))
         {
            §_-3s6§.§_-3ZM§(this);
         }
         if(§_-077§)
         {
            §_-077§.removeFromParent(true);
            §_-077§ = null;
         }
         super.dispose();
      }
      
      private function §_-4eV§(param1:Event) : void
      {
         var _loc2_:String = §_-40k§();
         if(param1.type == "locationChange" && _loc2_ != null)
         {
            _controller.§_-0ag§(_loc2_);
         }
      }
      
      private function §_-2an§(param1:Event) : void
      {
         if(_controller)
         {
            _controller.§_-0ag§(§_-40k§());
         }
      }
      
      private function §_-40k§() : String
      {
         var _loc1_:String = §_-077§.location;
         var _loc2_:int = _loc1_ != null ? _loc1_.indexOf("token=") : -1;
         if(_loc2_ < 0)
         {
            return null;
         }
         return _loc1_.substr(_loc2_ + "token=".length);
      }
   }
}
