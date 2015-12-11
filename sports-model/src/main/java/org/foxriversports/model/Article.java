package org.foxriversports.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * 
 * @author jtoepfer
 */
@Entity
public class Article implements Serializable {

	private static final long serialVersionUID = -6544088100071120182L;

	private Long articleId;
	
	private Long parentArticleId;
	
	private String description;
	
	private Section section;
	
	private Date createDateTime;
	
	private Date updateDateTime;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getArticleId() {
		return articleId;
	}

	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}

	public Long getParentArticleId() {
		return parentArticleId;
	}

	public void setParentArticleId(Long parentArticleId) {
		this.parentArticleId = parentArticleId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SECTIONID")
	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
	}

	public Date getCreateDateTime() {
		return createDateTime;
	}

	public void setCreateDateTime(Date createDateTime) {
		this.createDateTime = createDateTime;
	}

	public Date getUpdateDateTime() {
		return updateDateTime;
	}

	public void setUpdateDateTime(Date updateDateTime) {
		this.updateDateTime = updateDateTime;
	}

}
