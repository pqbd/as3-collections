package test.alx.common.util
{
  import alx.common.util.IMap;
  import alx.common.util.CHashMap;

  public class CHashMapTest extends CAbstractMapTest
  {
    public function CHashMapTest( strLabel:String):void
    {
      super( strLabel);
    }

    public override function createMap():IMap
    {
      return new CHashMap();
    }
  }
}