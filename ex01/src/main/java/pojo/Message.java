package pojo;

public class Message {
	private String msg;
	private String sender;
	private String receiver;
	private String url;
	
	public Message() {}

	public Message(String msg, String sender, String receiver, String url) {
		this.msg = msg;
		this.sender = sender;
		this.receiver = receiver;
		this.url = url;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	
	
}
