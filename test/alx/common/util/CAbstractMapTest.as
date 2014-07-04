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
                      , this.testSize
                      , this.testIsEmpty
                      , this.testContainsKey
                      , this.testContainsValue
                      , this.testGet
                      , this.testPut
                      , this.testRemove
                      , this.testPutAll
                      , this.testClear
                      , this.testKeySet
                      , this.testValues
                      , this.testEntrySet
                      , this.testToString
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

    public function testSize():void
    {
    }
    public function testIsEmpty():void
    {
    }
    public function testContainsKey():void
    {
    }
    public function testContainsValue():void
    {
    }
    public function testGet():void
    {
    }
    public function testPut():void
    {
    }
    public function testRemove():void
    {
    }
    public function testPutAll():void
    {
    }
    public function testClear():void
    {
    }
    public function testKeySet():void
    {
    }    
    public function testValues():void
    {
    }
    public function testEntrySet():void
    {
    }
    public function testToString():void
    {
    }
  }
}