﻿<%@ Page Language="C#" MasterPageFile="MasterPage.Master" AutoEventWireup="True" CodeBehind="ProductActive.aspx.cs" Inherits="SocoShop.Web.Admin.ProductActive" %><%@ Register Namespace="SkyCES.EntLib" Assembly="SkyCES.EntLib" TagPrefix="SkyCES"%><%@ Import Namespace="SocoShop.Common" %><%@ Import Namespace="SocoShop.Entity" %><%@ Import Namespace="SocoShop.Business" %><asp:Content ID="MasterContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">	<script language="javascript" src="/Admin/js/calendar.js" type="text/javascript"></script><div class="position"><img src="/Admin/Style/Images/PositionIcon.png"  alt=""/>商品分析</div>	<div class="listBlock">    <ul>        <li><a href="ProductStorage.aspx">库存分析</a></li>        <li class="listOn"><a href="ProductActive.aspx">关注度分析</a></li>        <li><a href="ProductSale.aspx">销量分析</a></li>      </ul>	</div><div class="pageMark">	    <div class="statisticsSearch">		    分类：<asp:DropDownList ID="ClassID" runat="server" />             品牌：<asp:DropDownList ID="BrandID" runat="server" />              名称：<SkyCES:TextBox CssClass="input" ID="Name" runat="server" Width="100px"/>             排序：<asp:DropDownList ID="ProductOrderType" runat="server">             <asp:ListItem Value="CommentCount">评论数从大到小</asp:ListItem><asp:ListItem Value="PerPoint">平均分从大到小</asp:ListItem>             <asp:ListItem Value="CollectCount">收藏数从大到小</asp:ListItem><asp:ListItem Value="ViewCount">浏览数从大到小</asp:ListItem></asp:DropDownList> 	        <asp:Button CssClass="button" ID="SearchButton" Text=" 搜 索 " runat="server"  OnClick="SearchButton_Click" />    </div>   <table class="listTable" cellpadding="0" cellpadding="0">    <tr class="listTableHead">	    <td style="width:5%">ID</td>	    <td style="width:40%; text-align:left;text-indent:8px;">商品名称</td>	    <td style="width:15%">分类</td>	    <td style="width:10%">评论数</td>	    <td style="width:10%">平均分</td>	    <td style="width:10%">收藏数</td>  	    <td style="width:10%">浏览数</td>              </tr>    <asp:Repeater ID="RecordList" runat="server">	    <ItemTemplate>	             	    <tr class="listTableMain" onmousemove="changeColor(this,'#FFFDD7')" onmouseout="changeColor(this,'#FFF')">			    <td style="width:5%"><%# Eval("ID") %></td>			    <td style="width:40%; text-align:left;text-indent:8px;"><%# Eval("Name") %></td>	            <td style="width:15%"><%# ProductClassBLL.ProductClassNameList(Eval("ClassID").ToString())%></td>			  	<td style="width:10%"><%#Eval("CommentCount")%></td> 			  	<td style="width:10%"><%#Eval("PerPoint")%></td> 			  	<td style="width:10%"><%#Eval("CollectCount")%></td> 	 			    <td style="width:10%"><%#Eval("ViewCount")%></td> 	        		    </tr>            </ItemTemplate>    </asp:Repeater>    </table>    <div class="listPage"><SkyCES:CommonPager ID="MyPager" runat="server" /></div></div></asp:Content>