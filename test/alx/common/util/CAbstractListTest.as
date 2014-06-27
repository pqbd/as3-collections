package test.alx.common.util
{
  import alx.common.test.CUnitTest;
  import alx.common.util.ICollection;
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
    }
    public function testAddToAll():void
    {
      const list:IList = this.createList();
    }
    public function testGet():void
    {
      const list:IList = this.createList();
    }
    public function testIndexOf():void
    {
      const list:IList = this.createList();
    }
    public function testLastIndexOf():void
    {
      const list:IList = this.createList();
    }
    public function testListIterator():void
    {
      const list:IList = this.createList();
    }
    public function testRemoveAt():void
    {
      const list:IList = this.createList();
    }
    public function testSet():void
    {
      const list:IList = this.createList();
    }
    public function testSubList():void
    {
      const list:IList = this.createList();
    }
  }
}