package com.cworld.timeline.core;


public class DTGItem {
	private String title;
	private String description;
	private String pubDate;
	private String link;
	private String guid;

	public DTGItem() {
		// TODO Auto-generated constructor stub
	}

	public DTGItem(String title, String description, String pubDate,
			String link, String guid) {
		this.title = title;
		this.description = description;
		this.pubDate = pubDate;
		this.link = link;
		this.guid = guid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}

	@Override
	public String toString() {
		return "\n" + title + " - " + description + " - " + pubDate + " - "
				+ link + " - " + guid;
	}

}
