package alx.common.util
{
  /**
   * Abstract List {@see http://grepcode.com/file/repository.grepcode.com/java/root/jdk/openjdk/6-b14/java/util/AbstractList.java#AbstractList}.
   * @author Alexander Volkov
   * @version 1.0
   */
  public class CArrayList//.< T>
  extends CAbstractList//.< T>
  {
Protected MethodConstructorAbstractList() : void
 Public Methodadd(Object) : boolean
 Public Methodadd(int, Object) : void
 Public MethodAbstractInheritedaddAll(Collection) : boolean
 Public MethodInheritedaddAll(Collection) : boolean
 Public MethodaddAll(int, Collection) : boolean
 Public Methodclear() : void
 Public MethodAbstractInheritedcontains(Object) : boolean
 Public MethodInheritedcontains(Object) : boolean
 Public MethodInheritedcontainsAll(Collection) : boolean
 Public MethodAbstractInheritedcontainsAll(Collection) : boolean
 Public Methodequals(Object) : boolean
 Public MethodAbstractget(int) : E
 Public MethodhashCode() : int
 Public MethodindexOf(Object) : int
 Public MethodAbstractInheritedisEmpty() : boolean
 Public MethodInheritedisEmpty() : boolean
 Public Methoditerator() : Iterator<E>
 Public MethodlastIndexOf(Object) : int
 Public MethodlistIterator() : ListIterator<E>
 Public MethodlistIterator(int) : ListIterator<E>
 Private MethodoutOfBoundsMsg(int) : String
 Private MethodrangeCheckForAdd(int) : void
 Public MethodAbstractInheritedremove(Object) : boolean
 Public Methodremove(int) : E
 Public MethodInheritedremove(Object) : boolean
 Public MethodAbstractInheritedremoveAll(Collection) : boolean
 Public MethodInheritedremoveAll(Collection) : boolean
 Protected MethodremoveRange(int, int) : void
 Public MethodAbstractInheritedretainAll(Collection) : boolean
 Public MethodInheritedretainAll(Collection) : boolean
 Public Methodset(int, Object) : E
 Public MethodAbstractInheritedsize() : int
 Public MethodAbstractInheritedsize() : int
 Public MethodsubList(int, int) : List<E>
 Public MethodAbstractInheritedtoArray() : Object[]
 Public MethodInheritedtoArray() : Object[]
 Public MethodAbstractInheritedtoArray(Object[]) : T[]
 Public MethodInheritedtoArray(Object[]) : T[]
 Public MethodInheritedtoString() : String
 Protected FieldTransientmodCount : int
 ClassRandomAccessSubList<E>
Package MethodConstructorRandomAccessSubList(AbstractList, int, int) : void
 Public MethodInheritedadd(Object) : boolean
 Public MethodInheritedadd(int, Object) : void
 Public MethodInheritedaddAll(Collection) : boolean
 Public MethodInheritedaddAll(int, Collection) : boolean
 Public MethodInheritedclear() : void
 Public MethodInheritedcontains(Object) : boolean
 Public MethodInheritedcontainsAll(Collection) : boolean
 Public MethodInheritedequals(Object) : boolean
 Public MethodInheritedget(int) : E
 Public MethodInheritedhashCode() : int
 Public MethodInheritedindexOf(Object) : int
 Public MethodInheritedisEmpty() : boolean
 Public MethodInheritediterator() : Iterator<E>
 Public MethodInheritedlastIndexOf(Object) : int
 Public MethodInheritedlistIterator() : ListIterator<E>
 Public MethodInheritedlistIterator(int) : ListIterator<E>
 Public MethodInheritedremove(int) : E
 Public MethodInheritedremove(Object) : boolean
 Public MethodInheritedremoveAll(Collection) : boolean
 Protected MethodInheritedremoveRange(int, int) : void
 Public MethodInheritedretainAll(Collection) : boolean
 Public MethodInheritedset(int, Object) : E
 Public MethodInheritedsize() : int
 Public MethodsubList(int, int) : List<E>
 Public MethodInheritedtoArray() : Object[]
 Public MethodInheritedtoArray(Object[]) : T[]
 Public MethodInheritedtoString() : String
 Protected FieldTransientInheritedmodCount : int
 ClassSubList<E>
Package MethodConstructorSubList(AbstractList, int, int) : void
 Public MethodInheritedadd(Object) : boolean
 Public Methodadd(int, Object) : void
 Public MethodaddAll(Collection) : boolean
 Public MethodaddAll(int, Collection) : boolean
 Private MethodcheckForComodification() : void
 Public MethodInheritedclear() : void
 Public MethodInheritedcontains(Object) : boolean
 Public MethodInheritedcontainsAll(Collection) : boolean
 Public MethodInheritedequals(Object) : boolean
 Public Methodget(int) : E
 Public MethodInheritedhashCode() : int
 Public MethodInheritedindexOf(Object) : int
 Public MethodInheritedisEmpty() : boolean
 Public Methoditerator() : Iterator<E>
 Public MethodInheritedlastIndexOf(Object) : int
 Public MethodInheritedlistIterator() : ListIterator<E>
 Public MethodlistIterator(int) : ListIterator<E>
 Private MethodoutOfBoundsMsg(int) : String
 Private MethodrangeCheck(int) : void
 Private MethodrangeCheckForAdd(int) : void
 Public Methodremove(int) : E
 Public MethodInheritedremove(Object) : boolean
 Public MethodInheritedremoveAll(Collection) : boolean
 Protected MethodremoveRange(int, int) : void
 Public MethodInheritedretainAll(Collection) : boolean
 Public Methodset(int, Object) : E
 Public Methodsize() : int
 Public MethodsubList(int, int) : List<E>
 Public MethodInheritedtoArray() : Object[]
 Public MethodInheritedtoArray(Object[]) : T[]
 Public MethodInheritedtoString() : String
 Private FieldFinall : AbstractList<E>
 Protected FieldTransientInheritedmodCount : int
 Private FieldFinaloffset : int
 Private Fieldsize : int
 ClassItr in AbstractList<E>
Package MethodFinalcheckForComodification() : void
 Public MethodhasNext() : boolean
 Public Methodnext() : E
 Public Methodremove() : void
 Package Fieldcursor : int
 Package FieldexpectedModCount : int
 Package FieldlastRet : int
 ClassListItr in AbstractList<E>
Package MethodConstructorListItr(int) : void
 Public Methodadd(Object) : void
 Package MethodFinalInheritedcheckForComodification() : void
 Public MethodAbstractInheritedhasNext() : boolean
 Public MethodInheritedhasNext() : boolean
 Public MethodhasPrevious() : boolean
 Public MethodInheritednext() : E
 Public MethodAbstractInheritednext() : E
 Public MethodnextIndex() : int
 Public Methodprevious() : E
 Public MethodpreviousIndex() : int
 Public MethodAbstractInheritedremove() : void
 Public MethodInheritedremove() : void
 Public Methodset(Object) : void
 Package FieldInheritedcursor : int
 Package FieldInheritedexpectedModCount : int
 Package FieldInheritedlastRet : int
  }
}