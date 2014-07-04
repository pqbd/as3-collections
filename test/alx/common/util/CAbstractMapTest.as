package test.alx.common.util
{
  import alx.common.test.CUnitTest;
  import alx.common.util.IMap;
  import alx.common.util.IIterator;
  import alx.common.util.ISet;
  import alx.common.util.ICollection;
  import alx.common.util.CAbstractMap;

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
      const map:IMap = this.createMap();
      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 0
                              );
      map.put( 'a', 1);
      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 1
                              );
      map.put( 'a', 2);
      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 1
                              );
      map.put( 'b', 3);
      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 2
                              );
    }
    public function testContainsKey():void
    {
      const map:IMap = this.createMap();
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);

      this.getTester().isTrue( 'map.containsKey( \'a\')'
                              , map.containsKey( 'a')
                              );
      this.getTester().isTrue( 'map.containsKey( \'b\')'
                              , map.containsKey( 'b')
                              );
      this.getTester().isTrue( 'map.containsKey( \'c\')'
                              , map.containsKey( 'c')
                              );
      this.getTester().isFalse( 'map.containsKey( \'d\')'
                              , map.containsKey( 'd')
                              );
    }
    public function testContainsValue():void
    {
      const map:IMap = this.createMap();
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);

      this.getTester().isTrue( 'map.containsValue( 2)'
                              , map.containsValue( 2)
                              );
      this.getTester().isTrue( 'map.containsValue( 3)'
                              , map.containsValue( 3)
                              );
      this.getTester().isTrue( 'map.containsValue( 4)'
                              , map.containsValue( 4)
                              );
      this.getTester().isFalse( 'map.containsValue( 1)'
                              , map.containsValue( 1)
                              );
    }
    public function testGet():void
    {
      const map:IMap = this.createMap();
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);

      this.getTester().isEqual( 'map.get( \'a\')'
                              , map.get( 'a')
                              , 2
                              );
      this.getTester().isEqual( 'map.get( \'d\')'
                              , map.get( 'd')
                              , null
                              );
    }
    public function testPut():void
    {
      const map:IMap = this.createMap();
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);

      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 3
                              );
    }
    public function testRemove():void
    {
      const map:IMap = this.createMap();
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);

      map.remove( 'a');
      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 2
                              );
      this.getTester().isEqual( 'map.get( \'a\')'
                              , map.get( 'a')
                              , null
                              );
    }
    public function testPutAll():void
    {
      const mapA:IMap = this.createMap();
      const mapB:IMap = this.createMap();
      mapB.put( 'a', 1);
      mapB.put( 'a', 2);
      mapB.put( 'b', 3);
      mapB.put( 'c', 4);

      mapA.putAll( mapB);
      this.getTester().isEqual( 'mapA.size()'
                              , mapA.size()
                              , 3
                              );
    }
    public function testClear():void
    {
      const map:IMap = this.createMap();
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);

      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 3
                              );
      this.getTester().isFalse( 'map.isEmpty()'
                              , map.isEmpty()
                              );
      map.clear();
      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 0
                              );
      this.getTester().isTrue( 'map.isEmpty()'
                              , map.isEmpty()
                              );
    }
    public function testKeySet():void
    {
      const map:IMap = this.createMap();
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);

      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 3
                              );

      const keySet:ISet = map.keySet();
      this.getTester().isEqual( 'keySet.size()'
                              , keySet.size()
                              , 3
                              );
      keySet.remove( 'a');
      this.getTester().isEqual( 'keySet.size()'
                              , keySet.size()
                              , 2
                              );
      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 2
                              );
    }
    public function testValues():void
    {
      const map:IMap = this.createMap();
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);

      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 3
                              );

      const values:ICollection = map.values();
      this.getTester().isEqual( 'values.size()'
                              , values.size()
                              , 3
                              );
      values.remove( 3);
      this.getTester().isEqual( 'values.size()'
                              , values.size()
                              , 2
                              );
      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 2
                              );
    }
    public function testEntrySet():void
    {
      const map:IMap = this.createMap();
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);

      this.getTester().isEqual( 'map.size()'
                              , map.size()
                              , 3
                              );

      const entrySet:ISet = map.entrySet();
      this.getTester().isEqual( 'entrySet.size()'
                              , entrySet.size()
                              , 3
                              );
    }
    public function testToString():void
    {
      const map:CAbstractMap = this.createMap() as CAbstractMap;
      map.put( 'a', 1);
      map.put( 'a', 2);
      map.put( 'b', 3);
      map.put( 'c', 4);
      this.getTester().isEqual( 'map.toString()'
                              , map.toString()
                              , '{a=2, b=3, c=4}'
                              );
    }
  }
}