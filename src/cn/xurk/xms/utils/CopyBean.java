package cn.xurk.xms.utils;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.util.Arrays;

/**
 * 较多属性的更新时可用
 * @author cao.xu
 *
 */
public class CopyBean{
	public static void Copy(Object source, Object dest,String[] ignore)throws Exception {
		

		//获取属性
		BeanInfo sourceBean = Introspector.getBeanInfo(source.getClass(), java.lang.Object.class);
		PropertyDescriptor[] sourceProperty = sourceBean.getPropertyDescriptors();
		
		BeanInfo destBean = Introspector.getBeanInfo(dest.getClass(), java.lang.Object.class);
		PropertyDescriptor[] destProperty = destBean.getPropertyDescriptors();
		
		try{
			for(int i=0;i<sourceProperty.length;i++){
				
				for(int j=0;j<destProperty.length;j++){
					
					if(sourceProperty[i].getName().equals(destProperty[j].getName())){
						//忽略id，cerateDate，motifyDate这些BaseEntity的属性
						if(!sourceProperty[i].getName().equals("id")&&                    
						   !sourceProperty[i].getName().equals("createDate")&&
					           !sourceProperty[i].getName().equals("modifyDate")&&
						   !Arrays.asList(ignore).contains(sourceProperty[i].getName()))   //忽略用户定义的排除属性
						//调用source的getter方法和dest的setter方法
						destProperty[j].getWriteMethod().invoke(dest, sourceProperty[i].getReadMethod().invoke(source));
						break;					
					}
				}
			}
		}catch(Exception e){
			throw new Exception("属性复制失败:"+e.getMessage());
		}
	}
}