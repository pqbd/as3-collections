package test.alx.common.util
{
  import alx.common.test.CUnitTest;
  import alx.common.util.ISet;
  import alx.common.util.IIterator;
  import alx.common.util.CAbstractSet;

  public class CAbstractSetTest extends CUnitTest
  {
    public function CAbstractSetTest( strLabel:String):void
    {
      super( strLabel);
    }

    protected override function testList():Array
    {
      return new Array( this.testSetCreation
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

    public function createSet():ISet
    {
      throw Error( 'createSet must be implemented');
    }

    public function testSetCreation():void
    {
      const set:ISet = this.createSet();
      this.getTester().isTrue( 'set.isEmpty()'
                              , set.isEmpty()
                              );
      this.getTester().isEqual( 'set.size()'
                              , set.size()
                              , 0
                              );
    }

    public function testAdd():void
    {
      const set:ISet = this.createSet();
      this.getTester().isTrue( 'set.add( 1)'
                              , set.add( 1)
                              );
      this.getTester().isTrue( 'set.add( 2)'
                              , set.add( 2)
                              );
      this.getTester().isTrue( 'set.add( 3)'
                              , set.add( 3)
                              );
      this.getTester().isFalse( 'set.isEmpty()'
                              , set.isEmpty()
                              );
      this.getTester().isEqual( 'set.size()'
                              , set.size()
                              , 3
                              );
      this.getTester().isTrue( 'set.add( 4)'
                              , set.add( 4)
                              );
      this.getTester().isFalse( 'set.isEmpty()'
                              , set.isEmpty()
                              );
      this.getTester().isEqual( 'set.size()'
                              , set.size()
                              , 4
                              );
      this.getTester().isFalse( 'set.add( 4)'
                              , set.add( 4)
                              );
      this.getTester().isFalse( 'set.isEmpty()'
                              , set.isEmpty()
                              );
      this.getTester().isEqual( 'set.size()'
                              , set.size()
                              , 4
                              );
    }
    public function testAddAll():void
    {
      const setA:ISet = this.createSet();
      const setB:ISet = this.createSet();
      setB.add( 1);
      setB.add( 2);
      setB.add( 2);
      setB.add( 3);
      this.getTester().isTrue( 'setA.addAll( setB)'
                              , setA.addAll( setB)
                              );
      this.getTester().isEqual( 'setA.size()'
                              , setA.size()
                              , 3
                              );
    }
    public function testClear():void
    {
      const set:ISet = this.createSet();
      set.add( 1);
      set.add( 2);
      set.add( 3);
      this.getTester().isFalse( 'set.isEmpty()'
                              , set.isEmpty()
                              );
      set.clear();
      this.getTester().isTrue( 'set.isEmpty()'
                              , set.isEmpty()
                              );
    }
    public function testContains():void
    {
      const set:ISet = this.createSet();
      set.add( 1);
      set.add( 2);
      set.add( 2);
      set.add( 3);
      this.getTester().isFalse( 'set.contains( 11)'
                              , set.contains( 11)
                              );
      this.getTester().isTrue( 'set.contains( 2)'
                              , set.contains( 2)
                              );
    }
    public function testContainsAll():void
    {
      const setA:ISet = this.createSet();
      const setB:ISet = this.createSet();
      const setC:ISet = this.createSet();
      const setD:ISet = this.createSet();
      setA.add( 1);
      setA.add( 2);
      setA.add( 3);
      setB.add( 1);
      setB.add( 2);
      setB.add( 3);
      setC.add( 1);
      setC.add( 2);
      setC.add( 3);
      setC.add( 5);
      setD.add( 1);
      setD.add( 3);
      setD.add( 3);
      this.getTester().isTrue( 'setA.containsAll( setB)'
                              , setA.containsAll( setB)
                              );
      this.getTester().isTrue( 'setC.containsAll( setA)'
                              , setC.containsAll( setA)
                              );
      this.getTester().isFalse( 'setA.containsAll( setC)'
                              , setA.containsAll( setC)
                              );
      this.getTester().isTrue( 'setA.containsAll( setD)'
                              , setA.containsAll( setD)
                              );
      setD.add( 7);
      this.getTester().isFalse( 'setA.containsAll( setD)'
                              , setA.containsAll( setD)
                              );
    }
    public function testToString():void
    {
      const set:CAbstractSet = this.createSet() as CAbstractSet;
      const setA:CAbstractSet = this.createSet() as CAbstractSet;
      const setB:CAbstractSet = this.createSet() as CAbstractSet;
      setA.add( 1);
      setA.add( 2);
      setA.add( 3);
      setB.add( 'a');
      setB.add( 'b');
      setB.add( 'c');
      set.add( setA);
      set.add( setB);
      set.add( set);
      this.getTester().isEqual( 'setA.toString()'
                              , setA.toString()
                              , '{1, 2, 3}'
                              );
      this.getTester().isEqual( 'setB.toString()'
                              , setB.toString()
                              , '{a, b, c}'
                              );
      this.getTester().isEqual( 'set.toString()'
                              , set.toString()
                              , '{{1, 2, 3}, {a, b, c}, (this)}'
                              );
    }
    public function testValueOf():void
    {
    }   
    public function testRemove():void
    {
      const set:ISet = this.createSet();
      set.add( 1);
      set.add( 2);
      set.add( 2);
      set.add( 3);
      this.getTester().isTrue( 'set.contains( 2)'
                              , set.contains( 2)
                              );
      set.remove( 2);
      this.getTester().isFalse( 'set.contains( 2)'
                              , set.contains( 2)
                              );
    }
    public function testRemoveAll():void
    {
      const setA:ISet = this.createSet();
      const setB:ISet = this.createSet();
      setA.add( 1);
      setA.add( 2);
      setA.add( 3);
      setA.add( 4);
      setA.add( 5);
      setB.add( 2);
      setB.add( 3);
      setB.add( 4);
      this.getTester().isTrue( 'setA.contains( 1)'
                              , setA.contains( 1)
                              );
      this.getTester().isTrue( 'setA.contains( 2)'
                              , setA.contains( 2)
                              );
      this.getTester().isTrue( 'setA.contains( 3)'
                              , setA.contains( 3)
                              );
      this.getTester().isTrue( 'setA.contains( 4)'
                              , setA.contains( 4)
                              );
      this.getTester().isTrue( 'setA.contains( 5)'
                              , setA.contains( 5)
                              );

      setA.removeAll( setB);
      this.getTester().isTrue( 'setA.contains( 1)'
                              , setA.contains( 1)
                              );
      this.getTester().isFalse( 'setA.contains( 2)'
                              , setA.contains( 2)
                              );
      this.getTester().isFalse( 'setA.contains( 3)'
                              , setA.contains( 3)
                              );
      this.getTester().isFalse( 'setA.contains( 4)'
                              , setA.contains( 4)
                              );
      this.getTester().isTrue( 'setA.contains( 5)'
                              , setA.contains( 5)
                              );
    }
    public function testRetainAll():void
    {
      const setA:ISet = this.createSet();
      const setB:ISet = this.createSet();
      setA.add( 1);
      setA.add( 2);
      setA.add( 3);
      setA.add( 4);
      setA.add( 5);
      setB.add( 2);
      setB.add( 3);
      setB.add( 4);
      this.getTester().isTrue( 'setA.contains( 1)'
                              , setA.contains( 1)
                              );
      this.getTester().isTrue( 'setA.contains( 2)'
                              , setA.contains( 2)
                              );
      this.getTester().isTrue( 'setA.contains( 3)'
                              , setA.contains( 3)
                              );
      this.getTester().isTrue( 'setA.contains( 4)'
                              , setA.contains( 4)
                              );
      this.getTester().isTrue( 'setA.contains( 5)'
                              , setA.contains( 5)
                              );

      setA.retainAll( setB);
      this.getTester().isFalse( 'setA.contains( 1)'
                              , setA.contains( 1)
                              );
      this.getTester().isTrue( 'setA.contains( 2)'
                              , setA.contains( 2)
                              );
      this.getTester().isTrue( 'setA.contains( 3)'
                              , setA.contains( 3)
                              );
      this.getTester().isTrue( 'setA.contains( 4)'
                              , setA.contains( 4)
                              );
      this.getTester().isFalse( 'setA.contains( 5)'
                              , setA.contains( 5)
                              );
    }
    public function testToArray():void
    {
      const set:ISet = this.createSet();
      const setA:ISet = this.createSet();
      const setB:ISet = this.createSet();
      setA.add( 1);
      setA.add( 2);
      setA.add( 3);
      setB.add( 'a');
      setB.add( 'b');
      setB.add( 'c');
      set.add( setA);
      set.add( setB);

      this.getTester().isEqual( 'setA.toArray()'
                              , ''+setA.toArray()
                              , '1,2,3'
                              );
      this.getTester().isEqual( 'setB.toArray()'
                              , ''+setB.toArray()
                              , 'a,b,c'
                              );
      var ar:Array = set.toArray();
      this.getTester().isTrue( 'ar[ 0] == setA'
                              , ( ar[ 0] == setA)
                              );
      this.getTester().isTrue( 'ar[ 1] == setB'
                              , ( ar[ 1] == setB)
                              );
    }
    public function testIterator():void
    {
      const set:ISet = this.createSet();
      set.add( 1);
      set.add( 2);
      set.add( 2);
      set.add( 3);
      const iterator:IIterator = set.iterator();
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