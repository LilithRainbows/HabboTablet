package §_-1Y7§
{
   import §_-17X§.§_-2Tr§;
   import §_-17X§.§_-3Qg§;
   import §_-3-y§.§_-AM§;
   
   [SecureSWF(rename="true")]
   public class §_-Kx§ implements §_-2Tr§, §_-3Qg§
   {
       
      
      private var §_-3pp§:String = "air16";
      
      public function §_-Kx§()
      {
         super();
      }
      
      public function dispose() : void
      {
      }
      
      public function §_-0PE§() : Array
      {
         var _loc1_:String = "AIR63-202103170014-662921096";
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         switch(int(§_-AM§.§_-44s§()))
         {
            case 0:
               _loc3_ = 3;
               break;
            case 1:
               _loc3_ = 2;
               break;
            case 2:
               _loc3_ = 1;
         }
         switch(int(§_-AM§.§_-09V§()))
         {
            case 0:
               _loc2_ = 1;
               break;
            case 1:
               _loc2_ = 2;
         }
         return new Array(_loc1_,§_-3pp§,3,1);
      }
   }
}
