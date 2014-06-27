package alx.common.util
{
  /**
   * List interface {@see http://grepcode.com/file/repository.grepcode.com/java/root/jdk/openjdk/6-b14/java/util/List.java#List}.
   * @author Alexander Volkov
   * @version 1.0
   */
  public interface IList
  extends ICollection
  {
    //+public function add( element:Object):Boolean;
    //+public function addAll( collection:ICollection):Boolean;
    //+public function clear():void;
    //+public function contains( element:Object):Boolean;
    //+public function containsAll( collection:ICollection):Boolean;
    //+public function isEmpty():Boolean;
    //+public function iterator():IIterator;
    //+public function removeAll( collection:ICollection):Boolean;
    //+public function retainAll( collection:ICollection):Boolean;
    //+public function remove( element:Object):Boolean;
    //+public function size():int;
    //+public function toArray( arr:Array = null):Array;

    /**
     * Insert element to specified position.
     * @param nIndex int
     * @param element Object
     */
    public function addTo( nIndex:int, element:Object):void;    
    /**
     * Insert elements to specified position.
     * @param nStartIndex int
     * @param colletion {@link ICollection}
     * @return Boolean
     */
    public function addToAll( nStartIndex:int, colletion:ICollection):Boolean;    
    /**
     * Gets element from specified position.
     * @param nIndex int
     * @return Object
     */
    public function get( nIndex:int):Object;
    //+public function valueOf():Object;
    /**
     * Gets index of element in the list.
     * @param element Object
     * @return int
     */
    public function indexOf( element:Object):int;
    /**
     * Gets last index of element in the list.
     * @param element Object
     * @return int
     */
    public function lastIndexOf( element:Object):int;
    /**
     * Gets list iterator.
     * @param element Object
     * @return int
     */
    public function listIterator( nStartIndex:int = 0):IListIterator;
    /**
     * Deletes element in specified position.
     * @param nIndex int
     * @return Object
     */
    public function removeAt( nIndex:int):Object;
    /**
     * Sets element in specified position.
     * @param nIndex int
     * @param element Object
     * @return Object
     */
    public function set( nIndex:int, element:Object):Object;
    /**
     * Gets a sublist.
     * @param nStartIndex int
     * @param nEndIndex int
     * @return {@link IList}
     */
    public function subList( nStartIndex:int, nEndIndex:int):IList;
  }
}