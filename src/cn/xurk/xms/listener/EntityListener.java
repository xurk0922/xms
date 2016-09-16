package cn.xurk.xms.listener;

import java.util.Date;

import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import cn.xurk.xms.entity.BaseEntity;

/**
 * 实体监听器，主要写当entity保存和修改的时候设置修改和保存的时间
 * @author scotte
 *
 */
public class EntityListener {
	
	@PrePersist
	public void prePersist(BaseEntity entity) {
		entity.setCreateDate(new Date());
		entity.setModifyDate(new Date());
	}

	@PreUpdate
	public void preUpdate(BaseEntity entity) {
		entity.setModifyDate(new Date());
	}
}
