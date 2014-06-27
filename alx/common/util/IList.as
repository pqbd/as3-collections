package alx.common.util
{
  /**
   * List interface {@see http://grepcode.com/file/repository.grepcode.com/java/root/jdk/openjdk/6-b14/java/util/List.java#List}.
   * @author Alexander Volkov
   * @version 1.0
   */
  public interface IList//.< T>
  extends ICollection//.< T>
  {
    //+public function add( element:Object):Boolean;
    public function addTo( nIndex:int, element:Object):void;
    //+public function addAll( collection:ICollection):Boolean;
    public function addToAll( nIndex:int, colletion:ICollection):Boolean;
    //+public function clear():void;
    //+public function contains( element:Object):Boolean;
    //+public function containsAll( collection:ICollection):Boolean;    
    public function get( nIndex:int):Object;
    //+public function valueOf():Object;
    public function indexOf( element:Object):int;
    //+public function isEmpty():Boolean;
    //+public function iterator():IIterator//IIterator.< T>;
    public function lastIndexOf( element:Object):int;
    public function listIterator() : IListIterator;//.< T>;
    public function listIterator( nStartIndex:int) : IListIterator;//.< T>;
    //+public function remove( element:Object):Boolean;
    public function removeAt( nIndex:int):Object;
    //+public function removeAll( collection:ICollection):Boolean;
    //+public function retainAll( collection:ICollection):Boolean;
    public function set( nIndex:int, element:Object):Object;
    //+public function size():int;
    public function subList( nStartIndex:int, nEndIndex:int):IList;//.< T>;
    //+public function toArray( arr:Array = null):Array;
  }
}