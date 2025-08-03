import {PostList} from "./PostList.imba"
import {Post} from "./Post.imba"

global css body c:warm2 bg:warm8 ff:Arial inset:0 d:vcc


tag app	
	<self>
		<PostList route="/">
		<Post route="/posts/:id">
		<div route="*">
			<h1> "Not founds"

imba.mount <app>
