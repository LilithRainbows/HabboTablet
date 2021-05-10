package §_-1qy§
{
   import §_-0Jn§.§_-2Jq§;
   import §_-0Jn§.§_-2Zv§;
   import §_-0b§.§_-0t4§;
   import §_-0bC§.§_-Lz§;
   import §_-1xs§.§_-vr§;
   import §_-3pr§.§_-03D§;
   import §_-3pr§.§_-0yL§;
   import §_-3rL§.§_-49r§;
   import §_-3rL§.§_-4VZ§;
   import §_-3yt§.GestureEvent;
   import §_-4UP§.§_-3-7§;
   import §_-4UP§.§_-fQ§;
   import §_-4XN§.§_-12k§;
   import §_-4XN§.§_-1NB§;
   import §_-Qq§.§_-0vm§;
   import §_-Qq§.§_-12r§;
   import §_-Qq§.§_-Bx§;
   import §_-Qq§.§_-IZ§;
   import §_-b5§.Button;
   import §_-b5§.LayoutGroup;
   import §_-b5§.§_-0zq§;
   import §_-b5§.§_-1u§;
   import §_-b5§.§_-3z2§;
   import §_-b5§.§_-4mN§;
   import §_-b5§.§_-re§;
   import flash.utils.setTimeout;
   import starling.core.Starling;
   import starling.display.Button;
   import starling.display.Quad;
   import starling.events.Event;
   import starling.events.Touch;
   import starling.events.TouchEvent;
   import starling.textures.Texture;
   
   public class §_-39u§
   {
      
      private static const §_-0nJ§:int = 800;
      
      private static const §_-0F6§:int = 0;
      
      private static const §_-0Pw§:int = 1;
      
      private static const §_-239§:String = "speak";
      
      private static const §_-j8§:String = "shout";
      
      private static const §_-0gu§:String = "whisper";
      
      private static var §_-fs§:Boolean;
       
      
      private var §_-0v6§:§_-vr§;
      
      private var §_-06c§:LayoutGroup;
      
      private var §_-1jX§:LayoutGroup;
      
      private var §_-10k§:§_-0-P§;
      
      private var §_-2Sd§:starling.display.Button;
      
      private var §_-1R4§:§_-re§;
      
      private var §_-06p§:§_-4mN§;
      
      private var §_-08Q§:§_-Lz§;
      
      private var §_-st§:§_-3z2§;
      
      private var §_-1Yw§:§_-3-7§;
      
      private var §_-8X§:§_-0zq§;
      
      private var §_-0yl§:Quad;
      
      private var _state:int = -1;
      
      private var §_-0H7§:Array;
      
      private var §_-3nO§:Boolean;
      
      private var _disposed:Boolean;
      
      private var §_-0-G§:§_-b5§.Button;
      
      public function §_-39u§(param1:§_-vr§)
      {
         super();
         §_-0v6§ = param1;
         §_-10k§ = new §_-0-P§(param1);
         §_-0H7§ = [];
         §_-fs§ = !§_-0t4§.isAndroid();
         §_-2bf§();
         createView();
      }
      
      public function dispose() : void
      {
         Starling.current.stage.removeEventListener("resize",onResize);
         if(§_-10k§)
         {
            §_-10k§.dispose();
            §_-10k§ = null;
         }
         if(§_-1R4§)
         {
            §_-1R4§.removeEventListener("enter",§_-0zO§);
            §_-1R4§.removeEventListener("softKeyboardActivate",§_-1yG§);
            §_-1R4§.removeEventListener("softKeyboardDeactivate",§_-df§);
            §_-1R4§.removeFromParent();
            §_-1R4§.dispose();
            §_-1R4§ = null;
         }
         if(§_-2Sd§)
         {
            §_-2Sd§.removeFromParent();
            §_-2Sd§.dispose();
            §_-2Sd§ = null;
         }
         if(§_-06p§)
         {
            §_-06p§.removeFromParent();
            §_-06p§.dispose();
            §_-06p§ = null;
         }
         if(§_-st§)
         {
            §_-st§.close(true);
            §_-st§ = null;
         }
         if(§_-08Q§)
         {
            §_-08Q§.removeAll();
            §_-08Q§ = null;
         }
         if(§_-06c§)
         {
            §_-06c§.removeFromParent();
            §_-06c§.dispose();
            §_-06c§ = null;
         }
         if(§_-0yl§)
         {
            §_-0yl§.dispose();
            §_-0yl§ = null;
         }
         if(§_-1jX§)
         {
            if(§_-2Jq§.§_-28i§(§_-1jX§))
            {
               §_-2Jq§.§_-Ae§(§_-1jX§);
            }
            §_-1jX§.dispose();
            §_-1jX§ = null;
         }
         §_-0H7§ = null;
         §_-0v6§ = null;
         _disposed = true;
      }
      
      public function get view() : §_-2Zv§
      {
         return §_-06c§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(_disposed)
         {
            return;
         }
         §_-Ub§();
         §_-06c§.visible = param1;
      }
      
      public function §_-3c1§(param1:String) : void
      {
         var _loc6_:* = 0;
         var _loc5_:* = null;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = null;
         if(§_-0H7§.indexOf(param1) != -1)
         {
            return;
         }
         §_-0H7§.push(param1);
         if(§_-0H7§.length > 5)
         {
            §_-0H7§.shift();
         }
         if(§_-06p§)
         {
            _loc6_ = 0;
            _loc5_ = §_-3jo§();
            §_-06p§.dataProvider = _loc5_;
            _loc2_ = _loc5_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc3_ = _loc5_.getItemAt(_loc4_);
               if(_loc3_.target == param1)
               {
                  _loc6_ = _loc4_;
                  break;
               }
               _loc4_++;
            }
            §_-06p§.selectedIndex = _loc6_;
         }
      }
      
      private function createView() : void
      {
         §_-02E§();
         §_-3aH§();
      }
      
      private function §_-02E§() : void
      {
         §_-06c§ = new LayoutGroup();
         §_-06c§.addEventListener("initialize",§_-d2§);
         var _loc4_:int = §_-0t4§.§_-4hU§(500);
         var _loc3_:Texture = HitchTheme.getTexture("toolbar_chatinput_button");
         §_-2Sd§ = new starling.display.Button(_loc3_);
         §_-2Sd§.addEventListener("touch",§_-4UH§);
         §_-2Sd§.scaleX = §_-2Sd§.scaleY = §_-0t4§.§_-324§();
         var _loc1_:§_-re§ = new §_-re§();
         _loc1_.§_-1Ii§ = false;
         _loc1_.prompt = "${just.say.hi}";
         _loc1_.addEventListener("touch",§_-4UH§);
         _loc1_.styleNameList.add("toolbar_chatinput");
         _loc1_.height = §_-2Sd§.height;
         _loc1_.width = _loc4_;
         §_-06c§.addChild(_loc1_);
         var _loc2_:LayoutGroup = new LayoutGroup();
         var _loc7_:§_-49r§;
         (_loc7_ = new §_-49r§()).horizontalAlign = "right";
         _loc2_.layout = _loc7_;
         _loc2_.width = _loc4_;
         §_-06c§.addChild(_loc2_);
         _loc2_.addChild(§_-2Sd§);
         var _loc5_:§_-12k§;
         (_loc5_ = new §_-12k§(§_-2Sd§)).§_-0yg§ = 800;
         _loc5_.addEventListener("gestureBegan",§_-2-K§,false,0,true);
         var _loc6_:§_-1NB§;
         (_loc6_ = new §_-1NB§(§_-2Sd§)).direction = 4;
         _loc6_.addEventListener("gestureRecognized",§_-1N7§);
      }
      
      private function §_-3aH§() : void
      {
         §_-1jX§ = §_-0yL§.§_-20k§();
         var _loc1_:int = §_-0t4§.§_-4hU§(20);
         var _loc2_:§_-0zq§ = HitchTheme.§_-0bB§("chat_history");
         _loc2_.§_-4cG§ = §_-0t4§.§_-4hU§(150);
         _loc2_.addEventListener("touch",§_-3Jw§);
         _loc2_.layoutData = new §_-4VZ§(NaN,NaN,NaN,0,NaN,0);
         §_-1jX§.addChild(_loc2_);
         §_-8X§ = new §_-0zq§();
         §_-8X§.addEventListener("touch",§_-19i§);
         §_-8X§.§_-4cG§ = §_-0t4§.§_-4hU§(150);
         §_-8X§.§_-467§ = §_-0t4§.§_-4hU§(150);
         §_-8X§.layoutData = §_-03D§.§_-3cK§(_loc1_,_loc2_,0);
         §_-8X§.width = 55;
         §_-i6§(§_-3LA§());
         §_-1jX§.addChild(§_-8X§);
         §_-06p§ = new §_-4mN§();
         §_-06p§.dataProvider = §_-3jo§();
         §_-06p§.selectedIndex = 0;
         §_-06p§.styleNameList.add("alternate-chat-picker");
         §_-06p§.§_-4MY§ = "alternate-no-border-picker-list";
         §_-06p§.§_-4Pu§ = "alternate-secondary-picker";
         §_-06p§.addEventListener("change",§_-3YH§);
         §_-06p§.addEventListener("scroll",§_-3YH§);
         §_-06p§.addEventListener("open",§_-3YH§);
         §_-06p§.layoutData = §_-03D§.§_-3cK§(_loc1_,§_-8X§,0);
         §_-1jX§.addChild(§_-06p§);
         §_-0-G§ = new §_-b5§.Button();
         §_-0-G§.label = "${send}";
         §_-0-G§.addEventListener("triggered",§_-4MW§);
         §_-0-G§.layoutData = new §_-4VZ§(NaN,3,NaN,NaN,NaN,0);
         §_-1jX§.addChild(§_-0-G§);
         §_-1R4§ = new §_-re§();
         §_-1R4§.§_-1Ii§ = true;
         §_-1R4§.isFocusEnabled = true;
         §_-1R4§.maxChars = 150;
         §_-1R4§.addEventListener("enter",§_-0zO§);
         §_-1R4§.addEventListener("softKeyboardActivate",§_-1yG§);
         §_-1R4§.styleNameList.add("alternate-chat-input");
         §_-1R4§.layoutData = §_-03D§.§_-34F§(_loc1_,§_-06p§,§_-0-G§,0);
         §_-1R4§.§_-2rW§.multiline = false;
         §_-1R4§.§_-2rW§.returnKeyLabel = "go";
         §_-1jX§.addChild(§_-1R4§);
         if(§_-0t4§.isAndroid())
         {
            §_-1R4§.addEventListener("softKeyboardDeactivate",§_-df§);
         }
         §_-1jX§.validate();
         Starling.current.stage.addEventListener("resize",onResize);
         onResize(null);
      }
      
      private function §_-d2§(param1:Event) : void
      {
         if(!§_-0v6§)
         {
            return;
         }
         §_-Ub§();
      }
      
      private function onResize(param1:Event) : void
      {
         var _loc4_:int;
         if((_loc4_ = §_-0t4§.§_-1OQ§()) == 2)
         {
            §_-2bm§();
         }
         else
         {
            §_-1jX§.y = 0;
         }
         var _loc3_:int = §_-0t4§.§_-4hU§(100);
         var _loc5_:int = §_-0t4§.§_-4hU§(2000);
         var _loc2_:int = Starling.current.stage.stageWidth;
         if(_loc2_ > _loc5_ + 2 * _loc3_)
         {
            §_-1jX§.width = _loc5_;
            _loc3_ = _loc2_ - _loc5_ - 2 * _loc3_;
         }
         else
         {
            §_-1jX§.width = int(_loc2_ - 2 * _loc3_);
         }
         §_-1jX§.x = _loc3_;
      }
      
      private function §_-4UH§(param1:TouchEvent) : void
      {
         var _loc3_:Touch = param1.touches[0];
         var _loc2_:Boolean = param1.ctrlKey || param1.shiftKey;
         if(_loc3_.phase == "ended")
         {
            if(§_-3nO§)
            {
               §_-3nO§ = false;
               return;
            }
            §_-2Rj§(_loc2_);
         }
      }
      
      private function §_-4MW§(param1:Event) : void
      {
         if(§_-1n8§())
         {
            §_-Ub§();
            Starling.current.nativeStage.focus = null;
         }
      }
      
      private function §_-3Jw§(param1:TouchEvent) : void
      {
         if(param1.touches[0].phase == "ended")
         {
            §_-2dt§();
         }
      }
      
      private function §_-2-K§(param1:GestureEvent) : void
      {
         §_-2dt§();
      }
      
      private function §_-1N7§(param1:GestureEvent) : void
      {
         §_-2dt§();
      }
      
      private function §_-1yG§(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(!§_-0t4§.isAndroid())
         {
            _loc2_ = Starling.current.nativeStage.softKeyboardRect.height;
            §_-1jX§.y = Starling.current.stage.stageHeight - _loc2_ - §_-1jX§.height;
         }
      }
      
      private function §_-df§(param1:Event) : void
      {
         §_-0zO§(param1);
      }
      
      private function §_-2dt§() : void
      {
         if(!§_-0v6§ || !§_-0v6§.desktop)
         {
            return;
         }
         §_-3nO§ = true;
         §_-0v6§.desktop.§_-QS§();
      }
      
      private function §_-19i§(param1:TouchEvent) : void
      {
         if(param1.touches[0].phase == "ended")
         {
            §_-1Ai§();
         }
         §_-0Lx§();
      }
      
      private function §_-3YH§(param1:Event) : void
      {
         §_-0Lx§();
      }
      
      private function §_-0zO§(param1:Event) : void
      {
         if(§_-1n8§())
         {
            if(!§_-fs§)
            {
               §_-Ub§();
               Starling.current.nativeStage.focus = null;
            }
         }
      }
      
      public function §_-2Rj§(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         if(_disposed || _state == 1)
         {
            return;
         }
         §_-0v6§.habboUI.§_-1ab§();
         if(param1)
         {
            §_-2bm§();
         }
         else
         {
            _loc2_ = Starling.current.nativeStage.softKeyboardRect.height;
            if(_loc2_ == 0)
            {
               §_-2bm§();
            }
         }
         _state = 1;
         if(!§_-2Jq§.§_-28i§(§_-1jX§))
         {
            §_-2Jq§.§_-2aB§(§_-1jX§,true,false,§_-2Ok§);
         }
         setTimeout(§_-0Lx§,100);
      }
      
      private function §_-Ub§() : void
      {
         if(_disposed || _state == 0)
         {
            return;
         }
         _state = 0;
         if(§_-1jX§)
         {
            if(§_-2Jq§.§_-28i§(§_-1jX§))
            {
               §_-2Jq§.§_-Ae§(§_-1jX§);
            }
         }
         §_-1R4§.§_-3um§();
         §_-0v6§.communication.connection.send(new §_-Bx§());
      }
      
      private function §_-2bm§() : void
      {
         var _loc1_:int = §_-0t4§.§_-4hU§(160);
         §_-1jX§.y = Starling.current.stage.stageHeight - _loc1_ - §_-1jX§.height;
      }
      
      private function §_-0Lx§() : void
      {
         if(_disposed || _state == 0)
         {
            return;
         }
         if(!§_-1R4§.§_-4Ho§)
         {
            §_-1R4§.setFocus();
         }
      }
      
      private function §_-1n8§() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc1_:String = §_-1R4§.text;
         if(_loc1_ && _loc1_ != "")
         {
            if(!§_-10k§.§_-18N§(_loc1_))
            {
               _loc2_ = §_-06p§.§_-aA§;
               _loc3_ = §_-3LA§();
               switch(_loc2_.type)
               {
                  case "speak":
                     §_-0v6§.communication.connection.send(new §_-0vm§(§_-1R4§.text,_loc3_.§_-0fW§));
                     break;
                  case "shout":
                     §_-0v6§.communication.connection.send(new §_-IZ§(§_-1R4§.text,_loc3_.§_-0fW§));
                     break;
                  case "whisper":
                     §_-0v6§.communication.connection.send(new §_-12r§(_loc2_.target,§_-1R4§.text,_loc3_.§_-0fW§));
               }
            }
            §_-1R4§.text = "";
            return true;
         }
         return false;
      }
      
      private function §_-2Ok§() : Quad
      {
         if(!§_-0yl§)
         {
            §_-0yl§ = new Quad(4,4,0);
            §_-0yl§.alpha = 0.01;
         }
         §_-0yl§.removeEventListeners();
         §_-0yl§.addEventListener("touch",§_-K6§);
         return §_-0yl§;
      }
      
      private function §_-K6§(param1:TouchEvent) : void
      {
         var _loc2_:Touch = param1.touches[0];
         if(_loc2_.phase == "ended")
         {
            §_-Ub§();
         }
      }
      
      private function §_-1Ai§() : void
      {
         if(!§_-8X§.stage)
         {
            return;
         }
         var _loc1_:§_-1u§ = new §_-1u§();
         _loc1_.styleNameList.add("list-grid-layout");
         _loc1_.styleNameList.add("list-grid-no-square-tiles");
         _loc1_.horizontalScrollPolicy = "off";
         _loc1_.scrollBarDisplayMode = "fixed";
         _loc1_.itemRendererProperties.labelField = "emptyLabel";
         _loc1_.itemRendererProperties.iconSourceField = "selectorPreview";
         _loc1_.addEventListener("change",§_-3nE§);
         _loc1_.addEventListener("scroll",§_-3YH§);
         _loc1_.dataProvider = §_-08Q§;
         _loc1_.maxWidth = Starling.current.stage.stageWidth - §_-0t4§.§_-4hU§(100);
         _loc1_.maxHeight = §_-0t4§.§_-4hU§(300);
         §_-st§ = §_-3z2§.show(_loc1_,§_-8X§,"up",true,§_-43t§);
         §_-st§.addEventListener("removedFromStage",§_-0B4§);
         §_-st§.§_-fD§ = true;
      }
      
      private function §_-43t§() : §_-3z2§
      {
         var _loc1_:§_-3z2§ = §_-3z2§.§_-Ac§();
         _loc1_.styleNameList.add("alternate-secondary-callout");
         _loc1_.§_-fD§ = true;
         return _loc1_;
      }
      
      private function §_-0B4§(param1:Event) : void
      {
         if(§_-st§)
         {
            §_-st§.dispose();
            §_-st§ = null;
         }
      }
      
      private function §_-3nE§(param1:Event) : void
      {
         var _loc2_:§_-1u§ = param1.target as §_-1u§;
         §_-i6§(_loc2_.§_-aA§ as §_-3-7§);
         if(§_-st§)
         {
            §_-st§.close();
         }
         §_-0Lx§();
      }
      
      private function §_-3LA§() : §_-3-7§
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(!§_-1Yw§)
         {
            §_-1Yw§ = §_-08Q§.getItemAt(0) as §_-3-7§;
            _loc1_ = 0;
            while(_loc1_ < §_-08Q§.length)
            {
               _loc2_ = §_-08Q§.getItemAt(_loc1_) as §_-3-7§;
               if(_loc2_.§_-0fW§ == §_-0v6§.habboUI.sessionDataManager.§_-1sG§)
               {
                  §_-1Yw§ = _loc2_;
                  break;
               }
               _loc1_++;
            }
         }
         return §_-1Yw§;
      }
      
      private function §_-i6§(param1:§_-3-7§) : void
      {
         if(param1)
         {
            §_-0v6§.habboUI.sessionDataManager.§_-1sG§ = param1.§_-0fW§;
         }
         §_-1Yw§ = param1;
         §_-8X§.source = param1.selectorPreview;
      }
      
      private function §_-3jo§() : §_-Lz§
      {
         var _loc2_:§_-Lz§ = new §_-Lz§();
         _loc2_.addItem({
            "label":"${widgets.chatinput.say}",
            "type":"speak",
            "target":null
         });
         _loc2_.addItem({
            "label":"${widgets.chatinput.shout}",
            "type":"shout",
            "target":null
         });
         var _loc1_:String = §_-0v6§.habboUI.localization.getLocalization("infostand.button.whisper");
         for each(var _loc3_ in §_-0H7§)
         {
            _loc2_.addItem({
               "label":_loc1_ + " " + _loc3_,
               "type":"whisper",
               "target":_loc3_
            });
         }
         return _loc2_;
      }
      
      private function §_-2bf§() : void
      {
         var _loc8_:* = null;
         §_-08Q§ = new §_-Lz§();
         var _loc4_:Array = §_-0v6§.habboUI.getProperty("disabled.custom.chat.styles").split(",");
         var _loc6_:§_-fQ§;
         var _loc1_:Array = (_loc6_ = §_-0v6§.§_-2Tp§.§_-0sW§).§_-UD§();
         var _loc7_:Boolean = §_-0v6§.habboUI.sessionDataManager.§_-1VS§;
         var _loc2_:* = §_-0v6§.habboUI.sessionDataManager.§_-1Jw§ >= 1;
         var _loc3_:Boolean = §_-0v6§.habboUI.sessionDataManager.§_-0bI§(4);
         for each(var _loc5_ in _loc1_)
         {
            if(!(_loc8_ = _loc6_.§_-2Xi§(_loc5_)).§_-1jJ§ && _loc4_.indexOf(_loc5_.toString()) == -1)
            {
               if(_loc8_.§_-4TQ§)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §_-08Q§.push(_loc8_);
                  }
               }
               else if(!_loc8_.§_-UV§ || _loc2_)
               {
                  §_-08Q§.push(_loc8_);
               }
            }
            else if(_loc8_.§_-35O§ && _loc3_)
            {
               §_-08Q§.push(_loc8_);
            }
         }
      }
   }
}
