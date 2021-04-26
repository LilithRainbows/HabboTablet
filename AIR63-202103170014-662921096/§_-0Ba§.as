package §_-49y§
{
   import §_-00I§.Button;
   import §_-00I§.LayoutGroup;
   import §_-00I§.§_-05i§;
   import §_-00I§.§_-0um§;
   import §_-00I§.§_-2NK§;
   import §_-00I§.§_-2lL§;
   import §_-00I§.§_-2sc§;
   import §_-03T§.§_-18e§;
   import §_-03T§.§_-4Mn§;
   import §_-0KC§.GestureEvent;
   import §_-0pj§.§_-16k§;
   import §_-0pj§.§_-41V§;
   import §_-19r§.§_-0Te§;
   import §_-19r§.§_-2PM§;
   import §_-19r§.§_-Av§;
   import §_-19r§.§_-m3§;
   import §_-1No§.§_-3yy§;
   import §_-1No§.§_-r9§;
   import §_-2-7§.§_-001§;
   import §_-29Q§.§_-1ku§;
   import §_-29Q§.§_-1mX§;
   import §_-3-y§.§_-AM§;
   import §_-4UF§.§_-2Z2§;
   import §_-4UF§.§_-3s6§;
   import §_-N§.§_-W9§;
   import flash.utils.setTimeout;
   import starling.core.Starling;
   import starling.display.Button;
   import starling.display.Quad;
   import starling.events.Event;
   import starling.events.Touch;
   import starling.events.TouchEvent;
   import starling.textures.Texture;
   
   public class §_-0Ba§
   {
      
      private static const §_-1us§:int = 800;
      
      private static const §_-2W9§:int = 0;
      
      private static const §_-2sb§:int = 1;
      
      private static const §_-2WY§:String = "speak";
      
      private static const §_-2YH§:String = "shout";
      
      private static const §_-1Hu§:String = "whisper";
      
      private static var §_-3kg§:Boolean;
       
      
      private var §_-1t3§:§_-001§;
      
      private var §_-1qj§:LayoutGroup;
      
      private var §_-25F§:LayoutGroup;
      
      private var §_-2IL§:§_-3YS§;
      
      private var §_-0Pa§:starling.display.Button;
      
      private var §_-17y§:§_-05i§;
      
      private var §_-0GR§:§_-2NK§;
      
      private var §_-2u0§:§_-W9§;
      
      private var §_-17E§:§_-2sc§;
      
      private var §_-1Ti§:§_-r9§;
      
      private var §_-30T§:§_-0um§;
      
      private var §_-3qc§:Quad;
      
      private var _state:int = -1;
      
      private var §_-0iL§:Array;
      
      private var §_-285§:Boolean;
      
      private var _disposed:Boolean;
      
      private var §_-2az§:§_-00I§.Button;
      
      public function §_-0Ba§(param1:§_-001§)
      {
         super();
         §_-1t3§ = param1;
         §_-2IL§ = new §_-3YS§(param1);
         §_-0iL§ = [];
         §_-3kg§ = !§_-AM§.§_-3DI§();
         §_-0cg§();
         createView();
      }
      
      public function dispose() : void
      {
         Starling.current.stage.removeEventListener("resize",onResize);
         if(§_-2IL§)
         {
            §_-2IL§.dispose();
            §_-2IL§ = null;
         }
         if(§_-17y§)
         {
            §_-17y§.removeEventListener("enter",§_-oD§);
            §_-17y§.removeEventListener("softKeyboardActivate",§_-0gi§);
            §_-17y§.removeEventListener("softKeyboardDeactivate",§_-2JF§);
            §_-17y§.removeFromParent();
            §_-17y§.dispose();
            §_-17y§ = null;
         }
         if(§_-0Pa§)
         {
            §_-0Pa§.removeFromParent();
            §_-0Pa§.dispose();
            §_-0Pa§ = null;
         }
         if(§_-0GR§)
         {
            §_-0GR§.removeFromParent();
            §_-0GR§.dispose();
            §_-0GR§ = null;
         }
         if(§_-17E§)
         {
            §_-17E§.close(true);
            §_-17E§ = null;
         }
         if(§_-2u0§)
         {
            §_-2u0§.removeAll();
            §_-2u0§ = null;
         }
         if(§_-1qj§)
         {
            §_-1qj§.removeFromParent();
            §_-1qj§.dispose();
            §_-1qj§ = null;
         }
         if(§_-3qc§)
         {
            §_-3qc§.dispose();
            §_-3qc§ = null;
         }
         if(§_-25F§)
         {
            if(§_-3s6§.§_-11C§(§_-25F§))
            {
               §_-3s6§.§_-3ZM§(§_-25F§);
            }
            §_-25F§.dispose();
            §_-25F§ = null;
         }
         §_-0iL§ = null;
         §_-1t3§ = null;
         _disposed = true;
      }
      
      public function get view() : §_-2Z2§
      {
         return §_-1qj§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(_disposed)
         {
            return;
         }
         §_-0dy§();
         §_-1qj§.visible = param1;
      }
      
      public function §_-0r5§(param1:String) : void
      {
         var _loc6_:* = 0;
         var _loc5_:* = null;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = null;
         if(§_-0iL§.indexOf(param1) != -1)
         {
            return;
         }
         §_-0iL§.push(param1);
         if(§_-0iL§.length > 5)
         {
            §_-0iL§.shift();
         }
         if(§_-0GR§)
         {
            _loc6_ = 0;
            _loc5_ = §_-yq§();
            §_-0GR§.dataProvider = _loc5_;
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
            §_-0GR§.selectedIndex = _loc6_;
         }
      }
      
      private function createView() : void
      {
         §_-TC§();
         §_-3no§();
      }
      
      private function §_-TC§() : void
      {
         §_-1qj§ = new LayoutGroup();
         §_-1qj§.addEventListener("initialize",§_-PL§);
         var _loc4_:int = §_-AM§.§_-2Xk§(500);
         var _loc3_:Texture = HitchTheme.getTexture("toolbar_chatinput_button");
         §_-0Pa§ = new starling.display.Button(_loc3_);
         §_-0Pa§.addEventListener("touch",§_-1qa§);
         §_-0Pa§.scaleX = §_-0Pa§.scaleY = §_-AM§.§_-1pb§();
         var _loc1_:§_-05i§ = new §_-05i§();
         _loc1_.§_-0Le§ = false;
         _loc1_.prompt = "${just.say.hi}";
         _loc1_.addEventListener("touch",§_-1qa§);
         _loc1_.styleNameList.add("toolbar_chatinput");
         _loc1_.height = §_-0Pa§.height;
         _loc1_.width = _loc4_;
         §_-1qj§.addChild(_loc1_);
         var _loc2_:LayoutGroup = new LayoutGroup();
         var _loc7_:§_-16k§;
         (_loc7_ = new §_-16k§()).horizontalAlign = "right";
         _loc2_.layout = _loc7_;
         _loc2_.width = _loc4_;
         §_-1qj§.addChild(_loc2_);
         _loc2_.addChild(§_-0Pa§);
         var _loc5_:§_-18e§;
         (_loc5_ = new §_-18e§(§_-0Pa§)).§_-1wc§ = 800;
         _loc5_.addEventListener("gestureBegan",§_-If§,false,0,true);
         var _loc6_:§_-4Mn§;
         (_loc6_ = new §_-4Mn§(§_-0Pa§)).direction = 4;
         _loc6_.addEventListener("gestureRecognized",§_-2yS§);
      }
      
      private function §_-3no§() : void
      {
         §_-25F§ = §_-1mX§.§_-pV§();
         var _loc1_:int = §_-AM§.§_-2Xk§(20);
         var _loc2_:§_-0um§ = HitchTheme.§_-0Pk§("chat_history");
         _loc2_.§_-0uP§ = §_-AM§.§_-2Xk§(150);
         _loc2_.addEventListener("touch",§_-r2§);
         _loc2_.layoutData = new §_-41V§(NaN,NaN,NaN,0,NaN,0);
         §_-25F§.addChild(_loc2_);
         §_-30T§ = new §_-0um§();
         §_-30T§.addEventListener("touch",§_-1oJ§);
         §_-30T§.§_-0uP§ = §_-AM§.§_-2Xk§(150);
         §_-30T§.§_-2Go§ = §_-AM§.§_-2Xk§(150);
         §_-30T§.layoutData = §_-1ku§.§_-0Vr§(_loc1_,_loc2_,0);
         §_-30T§.width = 55;
         §_-1UA§(§_-2Sb§());
         §_-25F§.addChild(§_-30T§);
         §_-0GR§ = new §_-2NK§();
         §_-0GR§.dataProvider = §_-yq§();
         §_-0GR§.selectedIndex = 0;
         §_-0GR§.styleNameList.add("alternate-chat-picker");
         §_-0GR§.§_-2wn§ = "alternate-no-border-picker-list";
         §_-0GR§.§_-X6§ = "alternate-secondary-picker";
         §_-0GR§.addEventListener("change",§_-4M-§);
         §_-0GR§.addEventListener("scroll",§_-4M-§);
         §_-0GR§.addEventListener("open",§_-4M-§);
         §_-0GR§.layoutData = §_-1ku§.§_-0Vr§(_loc1_,§_-30T§,0);
         §_-25F§.addChild(§_-0GR§);
         §_-2az§ = new §_-00I§.Button();
         §_-2az§.label = "${send}";
         §_-2az§.addEventListener("triggered",§_-1mL§);
         §_-2az§.layoutData = new §_-41V§(NaN,3,NaN,NaN,NaN,0);
         §_-25F§.addChild(§_-2az§);
         §_-17y§ = new §_-05i§();
         §_-17y§.§_-0Le§ = true;
         §_-17y§.isFocusEnabled = true;
         §_-17y§.maxChars = 150;
         §_-17y§.addEventListener("enter",§_-oD§);
         §_-17y§.addEventListener("softKeyboardActivate",§_-0gi§);
         §_-17y§.styleNameList.add("alternate-chat-input");
         §_-17y§.layoutData = §_-1ku§.§_-4PI§(_loc1_,§_-0GR§,§_-2az§,0);
         §_-17y§.§_-0DO§.multiline = false;
         §_-17y§.§_-0DO§.returnKeyLabel = "go";
         §_-25F§.addChild(§_-17y§);
         if(§_-AM§.§_-3DI§())
         {
            §_-17y§.addEventListener("softKeyboardDeactivate",§_-2JF§);
         }
         §_-25F§.validate();
         Starling.current.stage.addEventListener("resize",onResize);
         onResize(null);
      }
      
      private function §_-PL§(param1:Event) : void
      {
         if(!§_-1t3§)
         {
            return;
         }
         §_-0dy§();
      }
      
      private function onResize(param1:Event) : void
      {
         var _loc4_:int;
         if((_loc4_ = §_-AM§.§_-09V§()) == 2)
         {
            §_-2ms§();
         }
         else
         {
            §_-25F§.y = 0;
         }
         var _loc3_:int = §_-AM§.§_-2Xk§(100);
         var _loc5_:int = §_-AM§.§_-2Xk§(2000);
         var _loc2_:int = Starling.current.stage.stageWidth;
         if(_loc2_ > _loc5_ + 2 * _loc3_)
         {
            §_-25F§.width = _loc5_;
            _loc3_ = _loc2_ - _loc5_ - 2 * _loc3_;
         }
         else
         {
            §_-25F§.width = int(_loc2_ - 2 * _loc3_);
         }
         §_-25F§.x = _loc3_;
      }
      
      private function §_-1qa§(param1:TouchEvent) : void
      {
         var _loc3_:Touch = param1.touches[0];
         var _loc2_:Boolean = param1.ctrlKey || param1.shiftKey;
         if(_loc3_.phase == "ended")
         {
            if(§_-285§)
            {
               §_-285§ = false;
               return;
            }
            §_-4Sk§(_loc2_);
         }
      }
      
      private function §_-1mL§(param1:Event) : void
      {
         if(§_-2Vu§())
         {
            §_-0dy§();
            Starling.current.nativeStage.focus = null;
         }
      }
      
      private function §_-r2§(param1:TouchEvent) : void
      {
         if(param1.touches[0].phase == "ended")
         {
            §_-0Sk§();
         }
      }
      
      private function §_-If§(param1:GestureEvent) : void
      {
         §_-0Sk§();
      }
      
      private function §_-2yS§(param1:GestureEvent) : void
      {
         §_-0Sk§();
      }
      
      private function §_-0gi§(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(!§_-AM§.§_-3DI§())
         {
            _loc2_ = Starling.current.nativeStage.softKeyboardRect.height;
            §_-25F§.y = Starling.current.stage.stageHeight - _loc2_ - §_-25F§.height;
         }
      }
      
      private function §_-2JF§(param1:Event) : void
      {
         §_-oD§(param1);
      }
      
      private function §_-0Sk§() : void
      {
         if(!§_-1t3§ || !§_-1t3§.desktop)
         {
            return;
         }
         §_-285§ = true;
         §_-1t3§.desktop.§_-3qU§();
      }
      
      private function §_-1oJ§(param1:TouchEvent) : void
      {
         if(param1.touches[0].phase == "ended")
         {
            §_-4TN§();
         }
         §_-2Aw§();
      }
      
      private function §_-4M-§(param1:Event) : void
      {
         §_-2Aw§();
      }
      
      private function §_-oD§(param1:Event) : void
      {
         if(§_-2Vu§())
         {
            if(!§_-3kg§)
            {
               §_-0dy§();
               Starling.current.nativeStage.focus = null;
            }
         }
      }
      
      public function §_-4Sk§(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         if(_disposed || _state == 1)
         {
            return;
         }
         §_-1t3§.habboUI.§_-1II§();
         if(param1)
         {
            §_-2ms§();
         }
         else
         {
            _loc2_ = Starling.current.nativeStage.softKeyboardRect.height;
            if(_loc2_ == 0)
            {
               §_-2ms§();
            }
         }
         _state = 1;
         if(!§_-3s6§.§_-11C§(§_-25F§))
         {
            §_-3s6§.§_-K6§(§_-25F§,true,false,§_-4ZY§);
         }
         setTimeout(§_-2Aw§,100);
      }
      
      private function §_-0dy§() : void
      {
         if(_disposed || _state == 0)
         {
            return;
         }
         _state = 0;
         if(§_-25F§)
         {
            if(§_-3s6§.§_-11C§(§_-25F§))
            {
               §_-3s6§.§_-3ZM§(§_-25F§);
            }
         }
         §_-17y§.§_-3SA§();
         §_-1t3§.communication.connection.send(new §_-m3§());
      }
      
      private function §_-2ms§() : void
      {
         var _loc1_:int = §_-AM§.§_-2Xk§(160);
         §_-25F§.y = Starling.current.stage.stageHeight - _loc1_ - §_-25F§.height;
      }
      
      private function §_-2Aw§() : void
      {
         if(_disposed || _state == 0)
         {
            return;
         }
         if(!§_-17y§.§_-0zx§)
         {
            §_-17y§.setFocus();
         }
      }
      
      private function §_-2Vu§() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc1_:String = §_-17y§.text;
         if(_loc1_ && _loc1_ != "")
         {
            if(!§_-2IL§.§_-3I2§(_loc1_))
            {
               _loc2_ = §_-0GR§.§_-vC§;
               _loc3_ = §_-2Sb§();
               switch(_loc2_.type)
               {
                  case "speak":
                     §_-1t3§.communication.connection.send(new §_-Av§(§_-17y§.text,_loc3_.§_-4SW§));
                     break;
                  case "shout":
                     §_-1t3§.communication.connection.send(new §_-0Te§(§_-17y§.text,_loc3_.§_-4SW§));
                     break;
                  case "whisper":
                     §_-1t3§.communication.connection.send(new §_-2PM§(_loc2_.target,§_-17y§.text,_loc3_.§_-4SW§));
               }
            }
            §_-17y§.text = "";
            return true;
         }
         return false;
      }
      
      private function §_-4ZY§() : Quad
      {
         if(!§_-3qc§)
         {
            §_-3qc§ = new Quad(4,4,0);
            §_-3qc§.alpha = 0.01;
         }
         §_-3qc§.removeEventListeners();
         §_-3qc§.addEventListener("touch",§_-2cv§);
         return §_-3qc§;
      }
      
      private function §_-2cv§(param1:TouchEvent) : void
      {
         var _loc2_:Touch = param1.touches[0];
         if(_loc2_.phase == "ended")
         {
            §_-0dy§();
         }
      }
      
      private function §_-4TN§() : void
      {
         if(!§_-30T§.stage)
         {
            return;
         }
         var _loc1_:§_-2lL§ = new §_-2lL§();
         _loc1_.styleNameList.add("list-grid-layout");
         _loc1_.styleNameList.add("list-grid-no-square-tiles");
         _loc1_.horizontalScrollPolicy = "off";
         _loc1_.scrollBarDisplayMode = "fixed";
         _loc1_.itemRendererProperties.labelField = "emptyLabel";
         _loc1_.itemRendererProperties.iconSourceField = "selectorPreview";
         _loc1_.addEventListener("change",§_-0Z9§);
         _loc1_.addEventListener("scroll",§_-4M-§);
         _loc1_.dataProvider = §_-2u0§;
         _loc1_.maxWidth = Starling.current.stage.stageWidth - §_-AM§.§_-2Xk§(100);
         _loc1_.maxHeight = §_-AM§.§_-2Xk§(300);
         §_-17E§ = §_-2sc§.show(_loc1_,§_-30T§,"up",true,§_-BH§);
         §_-17E§.addEventListener("removedFromStage",§_-3z§);
         §_-17E§.§_-3Za§ = true;
      }
      
      private function §_-BH§() : §_-2sc§
      {
         var _loc1_:§_-2sc§ = §_-2sc§.§_-2dy§();
         _loc1_.styleNameList.add("alternate-secondary-callout");
         _loc1_.§_-3Za§ = true;
         return _loc1_;
      }
      
      private function §_-3z§(param1:Event) : void
      {
         if(§_-17E§)
         {
            §_-17E§.dispose();
            §_-17E§ = null;
         }
      }
      
      private function §_-0Z9§(param1:Event) : void
      {
         var _loc2_:§_-2lL§ = param1.target as §_-2lL§;
         §_-1UA§(_loc2_.§_-vC§ as §_-r9§);
         if(§_-17E§)
         {
            §_-17E§.close();
         }
         §_-2Aw§();
      }
      
      private function §_-2Sb§() : §_-r9§
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(!§_-1Ti§)
         {
            §_-1Ti§ = §_-2u0§.getItemAt(0) as §_-r9§;
            _loc1_ = 0;
            while(_loc1_ < §_-2u0§.length)
            {
               _loc2_ = §_-2u0§.getItemAt(_loc1_) as §_-r9§;
               if(_loc2_.§_-4SW§ == §_-1t3§.habboUI.sessionDataManager.§_-4W5§)
               {
                  §_-1Ti§ = _loc2_;
                  break;
               }
               _loc1_++;
            }
         }
         return §_-1Ti§;
      }
      
      private function §_-1UA§(param1:§_-r9§) : void
      {
         if(param1)
         {
            §_-1t3§.habboUI.sessionDataManager.§_-4W5§ = param1.§_-4SW§;
         }
         §_-1Ti§ = param1;
         §_-30T§.source = param1.selectorPreview;
      }
      
      private function §_-yq§() : §_-W9§
      {
         var _loc2_:§_-W9§ = new §_-W9§();
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
         var _loc1_:String = §_-1t3§.habboUI.localization.getLocalization("infostand.button.whisper");
         for each(var _loc3_ in §_-0iL§)
         {
            _loc2_.addItem({
               "label":_loc1_ + " " + _loc3_,
               "type":"whisper",
               "target":_loc3_
            });
         }
         return _loc2_;
      }
      
      private function §_-0cg§() : void
      {
         var _loc8_:* = null;
         §_-2u0§ = new §_-W9§();
         var _loc4_:Array = §_-1t3§.habboUI.getProperty("disabled.custom.chat.styles").split(",");
         var _loc6_:§_-3yy§;
         var _loc1_:Array = (_loc6_ = §_-1t3§.§_-0tf§.§_-A2§).§_-11§();
         var _loc7_:Boolean = §_-1t3§.habboUI.sessionDataManager.§_-1QS§;
         var _loc2_:* = §_-1t3§.habboUI.sessionDataManager.§_-0Y§ >= 1;
         var _loc3_:Boolean = §_-1t3§.habboUI.sessionDataManager.§_-1AS§(4);
         for each(var _loc5_ in _loc1_)
         {
            if(!(_loc8_ = _loc6_.§_-3hl§(_loc5_)).§_-0Jk§ && _loc4_.indexOf(_loc5_.toString()) == -1)
            {
               if(_loc8_.§_-4aL§)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §_-2u0§.push(_loc8_);
                  }
               }
               else if(!_loc8_.§_-13H§ || _loc2_)
               {
                  §_-2u0§.push(_loc8_);
               }
            }
            else if(_loc8_.§_-Nz§ && _loc3_)
            {
               §_-2u0§.push(_loc8_);
            }
         }
      }
   }
}
