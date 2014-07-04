package test.alx.common.util
{
  import alx.common.test.CUnitTest;
  import alx.common.util.ICollection;
  import alx.common.util.IIterator;
  import alx.common.util.CAbstractCollection;

  public class CAbstractCollectionTest extends CUnitTest
  {
    public function CAbstractCollectionTest( strLabel:String):void
    {
      super( strLabel);
    }

    protected override function testList():Array
    {
      return new Array( this.testCollectionCreation
                      , this.testAdd
                      , this.testAddAll
                      , this.testClear
                      , this.testContains
                      , this.testContainsAll
                      , this.testToArray
                      , this.testRemove
                      , this.testRemoveAll
                      , this.testRetainAll
                      , this.testIterator
                      , this.testValueOf
                      , this.testToString
                      );
    }

    public function createCollection():ICollection
    {
      throw Error( 'createCollection must be implemented');
    }

    public function testCollectionCreation():void
    {
      const collection:ICollection = this.createCollection();
      this.getTester().isTrue( 'collection.isEmpty()'
                              , collection.isEmpty()
                              );
      this.getTester().isEqual( 'collection.size()'
                              , collection.size()
                              , 0
                              );
    }

    public function testAdd():void
    {
      const collection:ICollection = this.createCollection();
      this.getTester().isTrue( 'collection.add( 1)'
                              , collection.add( 1)
                              );
      this.getTester().isTrue( 'collection.add( 2)'
                              , collection.add( 2)
                              );
      this.getTester().isTrue( 'collection.add( 3)'
                              , collection.add( 3)
                              );
      this.getTester().isFalse( 'collection.isEmpty()'
                              , collection.isEmpty()
                              );
      this.getTester().isEqual( 'collection.size()'
                              , collection.size()
                              , 3
                              );
      this.getTester().isTrue( 'collection.add( 4)'
                              , collection.add( 4)
                              );
      this.getTester().isFalse( 'collection.isEmpty()'
                              , collection.isEmpty()
                              );
      this.getTester().isEqual( 'collection.size()'
                              , collection.size()
                              , 4
                              );
    }
    public function testAddAll():void
    {
      const collectionA:ICollection = this.createCollection();
      const collectionB:ICollection = this.createCollection();
      collectionB.add( 1);
      collectionB.add( 2);
      collectionB.add( 3);
      this.getTester().isTrue( 'collectionA.addAll( collectionB)'
                              , collectionA.addAll( collectionB)
                              );
      this.getTester().isEqual( 'collectionA.size()'
                              , collectionA.size()
                              , 3
                              );
    }
    public function testClear():void
    {
      const collection:ICollection = this.createCollection();
      collection.add( 1);
      collection.add( 2);
      collection.add( 3);
      this.getTester().isFalse( 'collection.isEmpty()'
                              , collection.isEmpty()
                              );
      collection.clear();
      this.getTester().isTrue( 'collection.isEmpty()'
                              , collection.isEmpty()
                              );
    }
    public function testContains():void
    {
      const collection:ICollection = this.createCollection();
      collection.add( 1);
      collection.add( 2);
      collection.add( 3);
      this.getTester().isFalse( 'collection.contains( 11)'
                              , collection.contains( 11)
                              );
      this.getTester().isTrue( 'collection.contains( 2)'
                              , collection.contains( 2)
                              );
    }
    public function testContainsAll():void
    {
      const collectionA:ICollection = this.createCollection();
      const collectionB:ICollection = this.createCollection();
      const collectionC:ICollection = this.createCollection();
      const collectionD:ICollection = this.createCollection();
      collectionA.add( 1);
      collectionA.add( 2);
      collectionA.add( 3);
      collectionB.add( 1);
      collectionB.add( 2);
      collectionB.add( 3);
      collectionC.add( 1);
      collectionC.add( 2);
      collectionC.add( 3);
      collectionC.add( 5);
      collectionD.add( 1);
      collectionD.add( 3);
      collectionD.add( 3);
      this.getTester().isTrue( 'collectionA.containsAll( collectionB)'
                              , collectionA.containsAll( collectionB)
                              );
      this.getTester().isTrue( 'collectionC.containsAll( collectionA)'
                              , collectionC.containsAll( collectionA)
                              );
      this.getTester().isFalse( 'collectionA.containsAll( collectionC)'
                              , collectionA.containsAll( collectionC)
                              );
      this.getTester().isTrue( 'collectionA.containsAll( collectionD)'
                              , collectionA.containsAll( collectionD)
                              );
      collectionD.add( 7);
      this.getTester().isFalse( 'collectionA.containsAll( collectionD)'
                              , collectionA.containsAll( collectionD)
                              );
    }
    public function testToString():void
    {
      const collection:CAbstractCollection = this.createCollection() as CAbstractCollection;
      const collectionA:CAbstractCollection = this.createCollection() as CAbstractCollection;
      const collectionB:CAbstractCollection = this.createCollection() as CAbstractCollection;
      collectionA.add( 1);
      collectionA.add( 2);
      collectionA.add( 3);
      collectionB.add( 'a');
      collectionB.add( 'b');
      collectionB.add( 'c');
      collection.add( collectionA);
      collection.add( collectionB);
      collection.add( collection);
      this.getTester().isEqual( 'collectionA.toString()'
                              , collectionA.toString()
                              , '{1, 2, 3}'
                              );
      this.getTester().isEqual( 'collectionB.toString()'
                              , collectionB.toString()
                              , '{a, b, c}'
                              );
      this.getTester().isEqual( 'collection.toString()'
                              , collection.toString()
                              , '{{1, 2, 3}, {a, b, c}, (this)}'
                              );
    }
    public function testValueOf():void
    {
    }   
    public function testRemove():void
    {
      const collection:ICollection = this.createCollection();
      collection.add( 1);
      collection.add( 2);
      collection.add( 3);
      this.getTester().isTrue( 'collection.contains( 2)'
                              , collection.contains( 2)
                              );
      collection.remove( 2);
      this.getTester().isFalse( 'collection.contains( 2)'
                              , collection.contains( 2)
                              );
    }
    public function testRemoveAll():void
    {
      const collectionA:ICollection = this.createCollection();
      const collectionB:ICollection = this.createCollection();
      collectionA.add( 1);
      collectionA.add( 2);
      collectionA.add( 3);
      collectionA.add( 4);
      collectionA.add( 5);
      collectionB.add( 2);
      collectionB.add( 3);
      collectionB.add( 4);
      this.getTester().isTrue( 'collectionA.contains( 1)'
                              , collectionA.contains( 1)
                              );
      this.getTester().isTrue( 'collectionA.contains( 2)'
                              , collectionA.contains( 2)
                              );
      this.getTester().isTrue( 'collectionA.contains( 3)'
                              , collectionA.contains( 3)
                              );
      this.getTester().isTrue( 'collectionA.contains( 4)'
                              , collectionA.contains( 4)
                              );
      this.getTester().isTrue( 'collectionA.contains( 5)'
                              , collectionA.contains( 5)
                              );

      collectionA.removeAll( collectionB);
      this.getTester().isTrue( 'collectionA.contains( 1)'
                              , collectionA.contains( 1)
                              );
      this.getTester().isFalse( 'collectionA.contains( 2)'
                              , collectionA.contains( 2)
                              );
      this.getTester().isFalse( 'collectionA.contains( 3)'
                              , collectionA.contains( 3)
                              );
      this.getTester().isFalse( 'collectionA.contains( 4)'
                              , collectionA.contains( 4)
                              );
      this.getTester().isTrue( 'collectionA.contains( 5)'
                              , collectionA.contains( 5)
                              );
    }
    public function testRetainAll():void
    {
      const collectionA:ICollection = this.createCollection();
      const collectionB:ICollection = this.createCollection();
      collectionA.add( 1);
      collectionA.add( 2);
      collectionA.add( 3);
      collectionA.add( 4);
      collectionA.add( 5);
      collectionB.add( 2);
      collectionB.add( 3);
      collectionB.add( 4);
      this.getTester().isTrue( 'collectionA.contains( 1)'
                              , collectionA.contains( 1)
                              );
      this.getTester().isTrue( 'collectionA.contains( 2)'
                              , collectionA.contains( 2)
                              );
      this.getTester().isTrue( 'collectionA.contains( 3)'
                              , collectionA.contains( 3)
                              );
      this.getTester().isTrue( 'collectionA.contains( 4)'
                              , collectionA.contains( 4)
                              );
      this.getTester().isTrue( 'collectionA.contains( 5)'
                              , collectionA.contains( 5)
                              );

      collectionA.retainAll( collectionB);
      this.getTester().isFalse( 'collectionA.contains( 1)'
                              , collectionA.contains( 1)
                              );
      this.getTester().isTrue( 'collectionA.contains( 2)'
                              , collectionA.contains( 2)
                              );
      this.getTester().isTrue( 'collectionA.contains( 3)'
                              , collectionA.contains( 3)
                              );
      this.getTester().isTrue( 'collectionA.contains( 4)'
                              , collectionA.contains( 4)
                              );
      this.getTester().isFalse( 'collectionA.contains( 5)'
                              , collectionA.contains( 5)
                              );
    }
    public function testToArray():void
    {
      const collection:ICollection = this.createCollection();
      const collectionA:ICollection = this.createCollection();
      const collectionB:ICollection = this.createCollection();
      collectionA.add( 1);
      collectionA.add( 2);
      collectionA.add( 3);
      collectionB.add( 'a');
      collectionB.add( 'b');
      collectionB.add( 'c');
      collection.add( collectionA);
      collection.add( collectionB);

      this.getTester().isEqual( 'collectionA.toArray()'
                              , ''+collectionA.toArray()
                              , '1,2,3'
                              );
      this.getTester().isEqual( 'collectionB.toArray()'
                              , ''+collectionB.toArray()
                              , 'a,b,c'
                              );
      var ar:Array = collection.toArray();
      this.getTester().isTrue( 'ar[ 0] == collectionA'
                              , ( ar[ 0] == collectionA)
                              );
      this.getTester().isTrue( 'ar[ 1] == collectionB'
                              , ( ar[ 1] == collectionB)
                              );
    }
    public function testIterator():void
    {
      const collection:ICollection = this.createCollection();
      collection.add( 1);
      collection.add( 2);
      collection.add( 3);
      const iterator:IIterator = collection.iterator();
      this.getTester().isTrue( 'iterator.hasNext()'
                              , iterator.hasNext()
                              );
      try
      {
        iterator.remove();
        this.getTester().notHere( 'iterator.remove()');
      }
      catch( e:Error){}

      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 1
                              );
      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 2
                              );
      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 3
                              );
      this.getTester().isFalse( 'iterator.hasNext()'
                              , iterator.hasNext()
                              );
    }
  }
}