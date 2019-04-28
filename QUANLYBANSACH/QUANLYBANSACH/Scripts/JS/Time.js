// JavaScript Document
monthnames=new Array("January","Februrary","March","April","May","June","Jyly","August","September","October","November","Decemeber");
						var linkcount =0;
						function addlink(month, day, href) 
						{
							var entry = new Array(3);
							entry[0]=month;
							entry[1]=day;
							entry[2]=href;
							this[linkcount] = entry;
							linkcount++;
						}
						Array.prototype.addlink = addlink;
						linkdays = new Array();
						monthdays = new Array(12);
						monthdays[0]=31;
						monthdays[1]=28;
						monthdays[2]=31;
						monthdays[3]=30;
						monthdays[4]=31;
						monthdays[5]=30;
						monthdays[6]=31;
						monthdays[7]=31;
						monthdays[8]=30;
						monthdays[9]=31;
						monthdays[10]=30;
						monthdays[11]=31;
						todayDate = new Date();
						thisday = todayDate.getDay();
						thismonth = todayDate.getMonth();
						thisdate = todayDate.getDate();
						thisyear = todayDate.getYear();
						thisyear = thisyear % 100;
						thisyear =((thisyear<50) ? (2000 +		thisyear) : (1900+thisyear));
						if (((thisyear % 4 ==0) && !(thisyear % 100 ==0)) || (thisyear % 400 ==0))
							monthdays[1]++;
						startspaces = thisday;
						while(startspaces >7) startspaces-=7;
						startspaces = thisday - startspaces +1;
						if(startspaces <0) startspaces+=7;
						document.write("<table>");
						document.write("<tr><td colspan=7 class='monthyear'>"+ monthnames[thismonth]+" "+thisyear+ "</td></tr></table>");
						document.write("<table><tr class='weektitle'>");
						document.write("<td align=center>Sun</td>");
						document.write("<td align=center>Mon</td>");
						document.write("<td align=center>Tus</td>");
						document.write("<td align=center>Wed</td>");
						document.write("<td align=center>Thu</td>");
						document.write("<td align=center>Fri</td>");
						document.write("<td align=center>Sat</td>");
						document.write("</tr>");
						document.write("<tr>");
						for (s=0; s< startspaces; s++){document.write("<td>&nbsp</td>");}
						count=1;
						while (count <= monthdays[thismonth]) 
						{
							for (b = startspaces; b<7; b++) 
							{
								linktrue = false;
								document.write("<td class='weekday'>");
								for (c=0; c<linkdays.length; c++) 
								{
									if(linkdays[c] != null) 
									{
										if ((linkdays[c][0]==thismonth + 1)&&(linkdays[c][1]==count))
										{
											document.write("<a href=\""+linkdays[c][2] +"\">");
											linktrue = true;
										}
									}
								}
								if (count == thisdate) document.write("<font color = 'FF0000'><strong>");
								
								if (count <= monthdays[thismonth])
									document.write(count);
							
								else 
									document.write(" ");
								
								if (count == thisdate) 
									document.write("</strong></font>");
								
								if (linktrue)
									document.write("</a>");
								document.write("</td>");
								count++;
							}
							document.write("</tr>");
							document.write("<tr>");
							startspaces = 0;
							
						}
						
						document.write("</table>");
						//End-->