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
      return super.testList().concat( new Array( this.testGet
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

    public function testGet():void
    {
      const list:IList = this.createList();
    }
  }
}