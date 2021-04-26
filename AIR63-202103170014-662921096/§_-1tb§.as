package §_-oZ§
{
   import §_-0sb§.§_-3yM§;
   import §_-1KE§.§_-1GW§;
   import §_-1KE§.§_-2VE§;
   import §_-1MA§.Core;
   import §_-1dj§.§_-3au§;
   import §_-1fd§.§_-fN§;
   import §_-3-y§.§_-AM§;
   import §_-4GG§.§_-33Q§;
   import §_-ov§.§_-0oP§;
   import §implements§.§_-1Mw§;
   
   public class §_-1tb§ extends §_-14q§
   {
      
      public static const §_-2u-§:String = "state";
      
      public static const §_-1rQ§:String = "imageUrl";
      
      public static const §_-3v9§:String = "clickUrl";
      
      public static const §_-2uo§:String = "offsetX";
      
      public static const §_-3kl§:String = "offsetY";
      
      public static const §_-nK§:String = "offsetZ";
      
      private static var §_-4Fz§:Boolean;
       
      
      protected var §_-3rS§:Boolean;
      
      protected var §_-sR§:Boolean;
      
      public function §_-1tb§()
      {
         super();
         §_-3rS§ = true;
         §_-sR§ = false;
         Core.§_-194§.events.addEventListener("lowMemWarning",§_-Sr§);
      }
      
      override public function dispose() : void
      {
         if(Core.§_-194§.events)
         {
            Core.§_-194§.events.removeEventListener("lowMemWarning",§_-Sr§);
         }
         super.dispose();
      }
      
      private function §_-Sr§(param1:§_-3yM§) : void
      {
         §_-4Fz§ = true;
         if(Core.§_-194§.events)
         {
            Core.§_-194§.events.removeEventListener("lowMemWarning",§_-Sr§);
         }
      }
      
      override public function initialize(param1:XML) : void
      {
         super.initialize(param1);
         if(§_-3rS§)
         {
            object.getModelController().setNumber("furniture_selection_disable",1);
         }
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = ["RORAE_ROOM_AD_LOAD_IMAGE"];
         return §_-3xa§(super.getEventTypes(),_loc1_);
      }
      
      override public function processUpdateMessage(param1:§_-0oP§) : void
      {
         var _loc2_:* = null;
         super.processUpdateMessage(param1);
         if(param1 is §_-2VE§)
         {
            §_-3tb§();
         }
         if(param1 is §_-1GW§)
         {
            _loc2_ = param1 as §_-1GW§;
            switch(_loc2_.type)
            {
               case "RORUM_ROOM_BILLBOARD_IMAGE_LOADED":
                  object.getModelController().setNumber("furniture_branding_image_status",1,false);
                  break;
               case "RORUM_ROOM_BILLBOARD_IMAGE_LOADING_FAILED":
                  object.getModelController().setNumber("furniture_branding_image_status",-2);
                  Logger.log("Failed to load billboard image from url " + object.getModelController().getString("furniture_branding_image_url"));
            }
         }
      }
      
      private function §_-3tb§() : Boolean
      {
         var _loc12_:int = 0;
         var _loc3_:* = null;
         var _loc5_:* = null;
         if(object == null || §_-4Fz§)
         {
            return false;
         }
         var _loc14_:Number;
         if((_loc14_ = object.getModelController().getNumber("furniture_branding_image_status")) < -1)
         {
            return false;
         }
         var _loc13_:Boolean = false;
         var _loc9_:§_-33Q§;
         (_loc9_ = new §_-33Q§()).initializeFromRoomObjectModel(object.getModel());
         var _loc2_:Number = parseInt(0);
         if(!isNaN(_loc2_))
         {
            _loc12_ = _loc2_;
            if(object.getState(0) != _loc12_)
            {
               object.setState(_loc12_,0);
               _loc13_ = true;
            }
         }
         var _loc15_:String;
         if((_loc15_ = _loc9_.getValue("imageUrl")) != null)
         {
            _loc3_ = object.getModelController().getString("furniture_branding_image_url");
            if(_loc3_ == null || _loc3_ != _loc15_)
            {
               object.getModelController().setString("furniture_branding_image_url",_loc15_,false);
               object.getModelController().setNumber("furniture_branding_image_status",0,false);
               _loc13_ = true;
            }
         }
         var _loc4_:String;
         if((_loc4_ = _loc9_.getValue("clickUrl")) != null)
         {
            if((_loc5_ = object.getModelController().getString("furniture_branding_url")) == null || _loc5_ != _loc4_)
            {
               object.getModelController().setString("furniture_branding_url",_loc4_);
               _loc13_ = true;
            }
         }
         if(!isNaN(parseInt(_loc9_.getValue("offsetX"))))
         {
            _loc13_ = §_-1OD§("furniture_branding_offset_x",object.getModelController().getNumber("furniture_branding_offset_x"),parseInt(_loc9_.getValue("offsetX")));
         }
         if(!isNaN(parseInt(_loc9_.getValue("offsetY"))))
         {
            _loc13_ = §_-1OD§("furniture_branding_offset_y",object.getModelController().getNumber("furniture_branding_offset_y"),parseInt(_loc9_.getValue("offsetY")));
         }
         if(!isNaN(parseInt(_loc9_.getValue("offsetZ"))))
         {
            _loc13_ = §_-1OD§("furniture_branding_offset_z",object.getModelController().getNumber("furniture_branding_offset_z"),parseInt(_loc9_.getValue("offsetZ")));
         }
         var _loc10_:String = object.getModelController().getString("furniture_branding_image_url");
         var _loc1_:String = object.getModelController().getString("furniture_branding_url");
         var _loc6_:int = object.getModelController().getNumber("furniture_branding_offset_x");
         var _loc8_:int = object.getModelController().getNumber("furniture_branding_offset_y");
         var _loc7_:int = object.getModelController().getNumber("furniture_branding_offset_z");
         if(_loc10_ != null)
         {
            eventDispatcher.dispatchEvent(new §_-1Mw§("RORAE_ROOM_AD_LOAD_IMAGE",object,_loc10_,_loc1_,§_-AM§.§_-7d§));
         }
         var _loc11_:String = "imageUrl=" + (_loc10_ != null ? _loc10_ : "") + "\t";
         if(§_-sR§)
         {
            _loc11_ += "clickUrl=" + (_loc1_ != null ? _loc1_ : "") + "\t";
         }
         _loc11_ = (_loc11_ = (_loc11_ += "offsetX=" + _loc6_ + "\t") + ("offsetY=" + _loc8_ + "\t")) + ("offsetZ=" + _loc7_ + "\t");
         object.getModelController().setString("RWEIEP_INFOSTAND_EXTRA_PARAM","RWEIEP_BRANDING_OPTIONS" + _loc11_);
         return _loc13_;
      }
      
      override public function mouseEvent(param1:§_-3au§, param2:§_-fN§) : void
      {
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(param1.type == "mouseMove")
         {
            return;
         }
         var _loc3_:* = param1.type;
         if("doubleClick" !== _loc3_)
         {
            super.mouseEvent(param1,param2);
            return;
         }
      }
      
      private function §_-1OD§(param1:String, param2:int, param3:int) : Boolean
      {
         if(!isNaN(param3) && param2 != param3)
         {
            object.getModelController().setNumber(param1,param3);
            return true;
         }
         return false;
      }
   }
}
