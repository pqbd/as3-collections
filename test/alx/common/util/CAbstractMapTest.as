package test.alx.common.util
{
  import alx.common.test.CUnitTest;
  import alx.common.util.IMap;
  import alx.common.util.IIterator;

  public class CAbstractMapTest extends CUnitTest
  {
    public function CAbstractMapTest( strLabel:String):void
    {
      super( strLabel);
    }

    protected override function testList():Array
    {
      return new Array( this.testMapCreation
                      );
    }

    public function createMap():IMap
    {
      throw Error( 'createMap must be implemented');
    }

    public function testMapCreation():void
    {
      const map:IMap = this.createMap();
      this.getTester().isTrue( 'map.isEmpty()'
                              , map.isEmpty()
                              );
      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 0
                              );
    }
    

  }
}