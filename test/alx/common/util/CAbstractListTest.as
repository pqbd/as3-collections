package test.alx.common.util
{
  import alx.common.test.CUnitTest;
  import alx.common.util.ICollection;
  import alx.common.util.IListIterator;
  import alx.common.util.IList;

  public class CAbstractListTest extends CAbstractCollectionTest
  {
    public function CAbstractListTest( strLabel:String):void
    {
      super( strLabel);
    }

    protected override function testList():Array
    {
      return super.testList().concat( new Array( this.testAddTo
                                                , this.testAddToAll
                                                , this.testGet
                                                , this.testIndexOf
                                                , this.testLastIndexOf
                                                , this.testListIterator
                                                , this.testRemoveAt
                                                , this.testSet
                                                , this.testSubList
                                                )
                                     );

    }

    public override function createCollection():ICollection
    {
      return this.createList();
    }
    public function createList():IList
    {
      throw Error( 'createCollection must be implemented');
    }

    public function testAddTo():void
    {
      const list:IList = this.createList();
      try
      {
        list.addTo( 1, 10);
        this.getTester().notHere( 'list.addTo( 1, 10)');
      }
      catch ( e:Error){}
      list.addTo( 0, 10);
      list.addTo( 1, 20);
      list.addTo( 2, 30);

      this.getTester().isFalse( 'list.isEmpty()'
                              , list.isEmpty()
                              );
      this.getTester().isEqual( 'list.size()'
                              , list.size()
                              , 3
                              );
    }
    public function testAddToAll():void
    {
      const listA:IList = this.createList();
      const listB:IList = this.createList();
      listB.add( 1);
      listB.add( 2);
      listB.add( 3);
      this.getTester().isEqual( 'listA.size()'
                              , listA.size()
                              , 0
                              );
      listA.addToAll( 0, listB);
      this.getTester().isEqual( 'listA.size()'
                              , listA.size()
                              , 3
                              );
    }
    public function testGet():void
    {
      const list:IList = this.createList();
      try
      {
        list.get( 0);
        this.getTester().notHere( 'list.get( 0)');
      }
      catch ( e:Error){}
      list.add( 1);
      list.add( 2);
      list.add( 3);
      this.getTester().isEqual( 'list.get( 0)'
                              , list.get( 0)
                              , 1
                              );
      this.getTester().isEqual( 'list.get( 1)'
                              , list.get( 1)
                              , 2
                              );
      this.getTester().isEqual( 'list.get( 2)'
                              , list.get( 2)
                              , 3
                              );
    }
    public function testIndexOf():void
    {
      const list:IList = this.createList();
      list.add( 1);
      list.add( 9);
      list.add( 3);
      list.add( 5);
      list.add( 3);
      list.add( 11);
      this.getTester().isEqual( 'list.indexOf( 3)'
                              , list.indexOf( 3)
                              , 2
                              );
      this.getTester().isEqual( 'list.indexOf( 3)'
                              , list.indexOf( 11)
                              , 5
                              );
    }
    public function testLastIndexOf():void
    {
      const list:IList = this.createList();
      list.add( 1);
      list.add( 9);
      list.add( 3);
      list.add( 5);
      list.add( 3);
      list.add( 11);
      this.getTester().isEqual( 'list.lastIndexOf( 3)'
                              , list.lastIndexOf( 3)
                              , 4
                              );
      this.getTester().isEqual( 'list.lastIndexOf( 3)'
                              , list.lastIndexOf( 11)
                              , 5
                              );
    }
    public function testListIterator():void
    {
      const list:IList = this.createList();
      list.add( 1);
      list.add( 9);
      list.add( 3);
      const iterator:IListIterator = list.listIterator();
      this.getTester().isTrue( 'iterator.hasNext()'
                              , iterator.hasNext()
                              );
      this.getTester().isFalse( 'iterator.hasPrevious()'
                              , iterator.hasPrevious()
                              );
      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 1
                              );
      this.getTester().isTrue( 'iterator.hasPrevious()'
                              , iterator.hasPrevious()
                              );
      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 9
                              );
      this.getTester().isTrue( 'iterator.hasPrevious()'
                              , iterator.hasPrevious()
                              );
      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 3
                              );
      this.getTester().isFalse( 'iterator.hasNext()'
                              , iterator.hasNext()
                              );
      this.getTester().isTrue( 'iterator.hasPrevious()'
                              , iterator.hasPrevious()
                              );
      this.getTester().isEqual( 'iterator.previous()'
                              , iterator.previous()
                              , 3
                              );
      this.getTester().isTrue( 'iterator.hasNext()'
                              , iterator.hasNext()
                              );
      this.getTester().isEqual( 'iterator.previous()'
                              , iterator.previous()
                              , 9
                              );
      this.getTester().isEqual( 'iterator.previous()'
                              , iterator.previous()
                              , 1
                              );      
      iterator.next()
      this.getTester().isEqual( 'iterator.nextIndex()'
                              , iterator.nextIndex()
                              , 1
                              );
      this.getTester().isEqual( 'iterator.previousIndex()'
                              , iterator.previousIndex()
                              , 0
                              );
      iterator.set( 10);      
      this.getTester().isEqual( 'iterator.previous()'
                              , iterator.previous()
                              , 10
                              );
      iterator.add( 100);
      this.getTester().isEqual( 'iterator.previous()'
                              , iterator.previous()
                              , 100
                              );
      this.getTester().isEqual( 'iterator.nextIndex()'
                              , iterator.nextIndex()
                              , 0
                              );
      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 100
                              );
      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 10
                              );
      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 9
                              );
      this.getTester().isEqual( 'iterator.next()'
                              , iterator.next()
                              , 3
                              );
    }
    public function testRemoveAt():void
    {
      // not supported
    }
    public function testSet():void
    {
      // not supported
    }
    public function testSubList():void
    {
      // not supported
    }
  }
}