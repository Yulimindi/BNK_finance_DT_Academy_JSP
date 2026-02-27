<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 찾는 문화재</title>
<style>
	.images {
            height : 300px;
            width: 300px;
        }
</style>
</head>
<body>
	<h1>자주 찾는 문화재</h1>

	
	<div id="div">
        <table>
            <tbody id="tbody">
            </tbody>
        </table>
    </div>
    
	<script>
		const body = document.querySelector("#body");
	    const div = document.querySelector("#div");
	    const parent = document.querySelector("#parent");
	    const btn1 = document.querySelector("#btn1");
	    const btn2 = document.querySelector("#btn2");
	    const tbody = document.querySelector("#tbody");
	    const one = document.querySelector("#one");
	    const two = document.querySelector("#two");
	    const three = document.querySelector("#three");
	    
	    db();

		async function db() {
			
			return await new Promise((resolve, reject) => {
				const xhr = new XMLHttpRequest();
				xhr.onload = () => {
					
					const result = JSON.parse(xhr.responseText).map(e=>e);
					
					for(i = 0; i < result.length; i++) {
	                    const tr = document.createElement("tr");
	                    const tr2 = document.createElement("tr");
	                    const td = document.createElement("td");
	                    const td2 = document.createElement("td");
	                    let newImg = document.createElement("img");

	                    if("no" != result[i].fileurl1) {
		                    newImg.setAttribute("src", result[i].fileurl1);
		                    newImg.setAttribute("class", "images");
		                    newImg.setAttribute("id", result[i].MYONGCHING);
	
		                    td.appendChild(newImg);
		                    td2.textContent = result[i].MYONGCHING;
		                    tr.appendChild(td);
		                    tr2.appendChild(td2);
		                    tbody.appendChild(tr);
		                    tbody.appendChild(tr2);
	
		                    newImg.addEventListener("click", (e) => {
		                        
		                        div.innerHTML = "";
		                        const neww = document.createElement("div");
		                        const bttn = document.createElement("input");
		                        bttn.setAttribute("type", "button");
		                        bttn.setAttribute("value", "뒤로 가기");
		                        neww.appendChild(bttn);
		                        div.appendChild(neww);
		                        
		                        // div에 상세 정보 추가하면 될듯 테이블로 할까?
		                        let newImg = document.createElement("img");
	
		                        for(i = 0; i < result.length; i++) {
		                            if(result[i].MYONGCHING == e.target.id) {
	
		                                if("no" != result[i].fileurl1) {
		                                    let newImg = document.createElement("img");
		                                    newImg.setAttribute("src", result[i].fileurl1);
		                                    newImg.setAttribute("class", "images");
		                                    div.appendChild(newImg);
		                                }
	
		                                if("no" != result[i].fileurl2) {
		                                    let newImg = document.createElement("img");
		                                    newImg.setAttribute("src", result[i].fileurl2);
		                                    newImg.setAttribute("class", "images");
		                                    div.appendChild(newImg);
		                                }
	
		                                if("no" != result[i].fileurl3) {
		                                    let newImg = document.createElement("img");
		                                    newImg.setAttribute("src", result[i].fileurl3);
		                                    newImg.setAttribute("class", "images");
		                                    div.appendChild(newImg);
		                                }
	
		                                const DOJIJUNG_NO = document.createElement("div");
		                                DOJIJUNG_NO.textContent = "도지정 넘버 : " + result[i].DOJIJUNG_NO;
		                                const MYONGCHING = document.createElement("div");
		                                MYONGCHING.textContent = "명칭 :" + result[i].MYONGCHING;
		                                const MYONGCHING_HANMUN = document.createElement("div");
		                                MYONGCHING_HANMUN.textContent = "한자 이름 :" + result[i].MYONGCHING_HANMUN;
		                                const CONTENT = document.createElement("div");
		                                CONTENT.textContent = "설명 :" + result[i].CONTENT;
		                                const SIDAE = document.createElement("div");
		                                SIDAE.textContent = "시대 :" + result[i].SIDAE;
		                                const JIJUNG_DATE = document.createElement("div");
		                                JIJUNG_DATE.textContent = "지정일자 :" + result[i].JIJUNG_DATE;
		                                const ADDRESS1 = document.createElement("div");
		                                ADDRESS1.textContent = "주소 :" + result[i].ADDRESS1;
		                                	
		                                div.append(DOJIJUNG_NO);
		                                div.append(MYONGCHING);
		                                div.append(MYONGCHING_HANMUN);
		                                div.append(CONTENT);
		                                div.append(SIDAE);
		                                div.append(JIJUNG_DATE);
		                                div.append(ADDRESS1);
		                                
		                            }
		                        }
	
		                        bttn.addEventListener("click", () => {
		                            location.reload();
		                            db();
		                        })
		                    })
	                    } else {
	                    	newImg.setAttribute("src", "/ex01/white.jpg");
		                    newImg.setAttribute("class", "images");
		                    newImg.setAttribute("id", result[i].MYONGCHING);
	
		                    td.appendChild(newImg);
		                    td2.textContent = result[i].MYONGCHING;
		                    tr.appendChild(td);
		                    tr2.appendChild(td2);
		                    tbody.appendChild(tr);
		                    tbody.appendChild(tr2);
	
		                    newImg.addEventListener("click", (e) => {
		                        
		                        div.innerHTML = "";
		                        const neww = document.createElement("div");
		                        const bttn = document.createElement("input");
		                        bttn.setAttribute("type", "button");
		                        bttn.setAttribute("value", "뒤로 가기");
		                        neww.appendChild(bttn);
		                        div.appendChild(neww);
		                        
		                        // div에 상세 정보 추가하면 될듯 테이블로 할까?
		                        let newImg = document.createElement("img");
	
		                        for(i = 0; i < result.length; i++) {
		                            if(result[i].MYONGCHING == e.target.id) {
	
		                                if("no" != result[i].fileurl1) {
		                                    let newImg = document.createElement("img");
		                                    newImg.setAttribute("src", result[i].fileurl1);
		                                    newImg.setAttribute("class", "images");
		                                    div.appendChild(newImg);
		                                }
	
		                                if("no" != result[i].fileurl2) {
		                                    let newImg = document.createElement("img");
		                                    newImg.setAttribute("src", result[i].fileurl2);
		                                    newImg.setAttribute("class", "images");
		                                    div.appendChild(newImg);
		                                }
	
		                                if("no" != result[i].fileurl3) {
		                                    let newImg = document.createElement("img");
		                                    newImg.setAttribute("src", result[i].fileurl3);
		                                    newImg.setAttribute("class", "images");
		                                    div.appendChild(newImg);
		                                }
	
		                                const DOJIJUNG_NO = document.createElement("div");
		                                DOJIJUNG_NO.textContent = "도지정 넘버 : " + result[i].DOJIJUNG_NO;
		                                const MYONGCHING = document.createElement("div");
		                                MYONGCHING.textContent = "명칭 :" + result[i].MYONGCHING;
		                                const MYONGCHING_HANMUN = document.createElement("div");
		                                MYONGCHING_HANMUN.textContent = "한자 이름 :" + result[i].MYONGCHING_HANMUN;
		                                const CONTENT = document.createElement("div");
		                                CONTENT.textContent = "설명 :" + result[i].CONTENT;
		                                const SIDAE = document.createElement("div");
		                                SIDAE.textContent = "시대 :" + result[i].SIDAE;
		                                const JIJUNG_DATE = document.createElement("div");
		                                JIJUNG_DATE.textContent = "지정일자 :" + result[i].JIJUNG_DATE;
		                                const ADDRESS1 = document.createElement("div");
		                                ADDRESS1.textContent = "주소 :" + result[i].ADDRESS1;
		                                	
		                                div.append(DOJIJUNG_NO);
		                                div.append(MYONGCHING);
		                                div.append(MYONGCHING_HANMUN);
		                                div.append(CONTENT);
		                                div.append(SIDAE);
		                                div.append(JIJUNG_DATE);
		                                div.append(ADDRESS1);
		                                
		                            }
		                        }
	
		                        bttn.addEventListener("click", () => {
		                            location.reload();
		                            db();
		                        })
		                    })
	                    }
	                } 
				}
				
				xhr.open("get", "SaveDBServlet");
				
				xhr.send();
			})
				
		}
		
	
			
		
		
	</script>
</body>
</html>