// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.excale.auth;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.excale.auth.Appuser;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Appuser_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Appuser.entityManager;
    
    public static final EntityManager Appuser.entityManager() {
        EntityManager em = new Appuser().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Appuser.countAppusers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Appuser o", Long.class).getSingleResult();
    }
    
    public static List<Appuser> Appuser.findAllAppusers() {
        return entityManager().createQuery("SELECT o FROM Appuser o", Appuser.class).getResultList();
    }
    
    public static Appuser Appuser.findAppuser(Long id) {
        if (id == null) return null;
        return entityManager().find(Appuser.class, id);
    }
    
    public static List<Appuser> Appuser.findAppuserEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Appuser o", Appuser.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Appuser.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Appuser.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Appuser attached = Appuser.findAppuser(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Appuser.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Appuser.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Appuser Appuser.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Appuser merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
