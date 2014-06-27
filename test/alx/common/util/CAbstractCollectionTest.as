package test.alx.common.util
{
  import alx.common.test.CUnitTest;
  import alx.common.util.ICollection;

  public class CAbstractCollectionTest extends CUnitTest
  {
    public function CAbstractCollectionTest( strLabel:String):void
    {
      super( strLabel);
    }

    protected override function testList():Array
    {
      return new Array( this.testCreation
                      );
    }

    public function createCollection():ICollection
    {
      throw Error( 'createCollection must be implemented');
    }

    public function testCreation():void
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
  }
}