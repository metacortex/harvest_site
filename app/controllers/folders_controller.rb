
    

  

<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>app/controllers/folders_controller.rb at master from metacortex's harvest_site - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />

    <link href="https://assets1.github.com/stylesheets/bundle_common.css?92432785e9fc333235be9636fdcfbe129a830779" media="screen" rel="stylesheet" type="text/css" />
<link href="https://assets1.github.com/stylesheets/bundle_github.css?92432785e9fc333235be9636fdcfbe129a830779" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
      if (typeof console == "undefined" || typeof console.log == "undefined")
        console = { log: function() {} }
    </script>
    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = 'duecorda'
      
    </script>
    <script src="https://assets3.github.com/javascripts/jquery/jquery-1.4.2.min.js?92432785e9fc333235be9636fdcfbe129a830779" type="text/javascript"></script>
    <script src="https://assets3.github.com/javascripts/bundle_common.js?92432785e9fc333235be9636fdcfbe129a830779" type="text/javascript"></script>
<script src="https://assets0.github.com/javascripts/bundle_github.js?92432785e9fc333235be9636fdcfbe129a830779" type="text/javascript"></script>


        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "metacortex/harvest_site"
      })
    </script>

    
  
    
  

  <link href="https://github.com/metacortex/harvest_site/commits/master.atom" rel="alternate" title="Recent Commits to harvest_site:master" type="application/atom+xml" />

        <meta name="description" content="" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "metacortex/harvest_site";
      GitHub.currentRef = 'master';
      GitHub.commitSHA = "d1f00964872365d63e586460250e1d38acb11db1";
      GitHub.currentPath = 'app/controllers/folders_controller.rb';
      GitHub.masterBranch = "master";

      
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

          <script type="text/javascript">
      var mpq = [];
      mpq.push(["init", "65fde2abd433eae3b32b38b7ebd2f37e"]);
      (function() {
      var mp = document.createElement("script"); mp.type = "text/javascript"; mp.async = true;
      mp.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + "//api.mixpanel.com/site_media/js/api/mixpanel.js";
      var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(mp, s);
      })();
      </script>

  </head>

  

  <body class="logged_in page-blob">
    

    

    

    

    

    <div class="subnavd" id="main">
      <div id="header" class="true">
        
          <a class="logo boring" href="https://github.com/">
            <img src="/images/modules/header/logov3.png?changed" class="default" alt="github" />
            <!--[if (gt IE 8)|!(IE)]><!-->
            <img src="/images/modules/header/logov3-hover.png" class="hover" alt="github" />
            <!--<![endif]-->
          </a>
        
        
          





  
    <div class="userbox">
      <div class="avatarname">
        <a href="https://github.com/duecorda"><img src="https://secure.gravatar.com/avatar/a6d0029b6e4849372412fdb0c10054e1?s=140&d=https://github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="20" height="20"  /></a>
        <a href="https://github.com/duecorda" class="name">duecorda</a>

        
        
      </div>
      <ul class="usernav">
        <li><a href="https://github.com/">Dashboard</a></li>
        <li>
          
          <a href="https://github.com/inbox">Inbox</a>
          <a href="https://github.com/inbox" class="unread_count ">0</a>
        </li>
        <li><a href="https://github.com/account">Account Settings</a></li>
                        <li><a href="/logout">Log Out</a></li>
      </ul>
    </div><!-- /.userbox -->
  


        
        <div class="topsearch">
  
    <form action="/search" id="top_search_form" method="get">
      <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search">Advanced Search</a>
      <input type="search" class="search my_repos_autocompleter" name="q" results="5" placeholder="Search&hellip;" /> <input type="submit" value="Search" class="button" />
      <input type="hidden" name="type" value="Everything" />
      <input type="hidden" name="repo" value="" />
      <input type="hidden" name="langOverride" value="" />
      <input type="hidden" name="start_value" value="1" />
    </form>
    <ul class="nav">
      <li><a href="/explore">Explore GitHub</a></li>
      <li><a href="https://gist.github.com">Gist</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="http://help.github.com">Help</a></li>
    </ul>
  
</div>

      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">

      

      <div class="title-actions-bar">
        <h1>
          <a href="/metacortex">metacortex</a> / <strong><a href="https://github.com/metacortex/harvest_site">harvest_site</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      

      
        <li class="for-owner" style="display:none"><a href="https://github.com/metacortex/harvest_site/admin" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/metacortex/harvest_site/toggle_watch" class="minibutton btn-watch " id="watch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', 'ff53f3e8796f3d31b2a5bf999f2d8d942b73d873'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/metacortex/harvest_site/toggle_watch" class="minibutton btn-watch " id="unwatch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', 'ff53f3e8796f3d31b2a5bf999f2d8d942b73d873'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          
            <li class="for-notforked" style="display:none"><a href="/metacortex/harvest_site/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', 'ff53f3e8796f3d31b2a5bf999f2d8d942b73d873'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
            <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          

          <li id='pull_request_item' class='nspr' style='display:none'><a href="/metacortex/harvest_site/pull/new/master" class="minibutton btn-pull-request "><span><span class="icon"></span>Pull Request</span></a></li>
        
      
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/metacortex/harvest_site/watchers" title="Watchers" class="tooltipped downwards">3</a></li>
          <li class="forks"><a href="/metacortex/harvest_site/network" title="Forks" class="tooltipped downwards">2</a></li>
        </ul>
      </li>
    </ul>

      </div>

        
  <ul class="tabs">
    <li><a href="https://github.com/metacortex/harvest_site" class="selected" highlight="repo_source">Source</a></li>
    <li><a href="https://github.com/metacortex/harvest_site/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/metacortex/harvest_site/network" highlight="repo_network">Network</a></li>
    <li><a href="/metacortex/harvest_site/pulls" highlight="repo_pulls">Pull Requests (0)</a></li>

    
      <li><a href="/metacortex/harvest_site/forkqueue" highlight="repo_fork_queue">Fork Queue</a></li>
    

    
      
      <li><a href="/metacortex/harvest_site/issues" highlight="issues">Issues (0)</a></li>
    

                <li><a href="/metacortex/harvest_site/wiki" highlight="repo_wiki">Wiki (0)</a></li>
        
    <li><a href="/metacortex/harvest_site/graphs" highlight="repo_graphs">Graphs</a></li>

    <li class="contextswitch nochoices">
      <span class="toggle leftwards" >
        <em>Branch:</em>
        <code>master</code>
      </span>
    </li>
  </ul>

  <div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
  <div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

  <div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown defunct">Switch Tags (0)</a>
      
    </li>
    <li>
    
    <a href="/metacortex/harvest_site/branches" class="manage">Branch List</a>
    
    </li>
  </ul>
</div>

  
  
  
  
  
  



        
    <div class="frame frame-center tree-finder" style="display: none">
      <div class="breadcrumb">
        <b><a href="/metacortex/harvest_site">harvest_site</a></b> /
        <input class="tree-finder-input" type="text" name="query" autocomplete="off" spellcheck="false">
      </div>

      
        <div class="octotip">
          <p>
            <a href="/metacortex/harvest_site/dismiss-tree-finder-help" class="dismiss js-dismiss-tree-list-help" title="Hide this notice forever">Dismiss</a>
            <strong>Octotip:</strong> You've activated the <em>file finder</em> by pressing <span class="kbd">t</span>
            Start typing to filter the file list. Use <span class="kbd badmono">↑</span> and <span class="kbd badmono">↓</span> to navigate,
            <span class="kbd">enter</span> to view files.
          </p>
        </div>
      

      <table class="tree-browser" cellpadding="0" cellspacing="0">
        <tr class="js-header"><th>&nbsp;</th><th>name</th></tr>
        <tr class="js-no-results no-results" style="display: none">
          <th colspan="2">No matching files</th>
        </tr>
        <tbody class="js-results-list">
        </tbody>
      </table>
    </div>

    <div id="jump-to-line" style="display:none">
      <h2>Jump to Line</h2>
      <form>
        <input class="textfield" type="text">
        <div class="full-button">
          <button type="submit" class="classy">
            <span>Go</span>
          </button>
        </div>
      </form>
    </div>

    <div id="repo_details" class="metabox clearfix has-downloads-no-desc">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

        <a href="/metacortex/harvest_site/downloads" class="download-source" id="download_button" title="Download source, tagged packages and binaries."><span class="icon"></span>Downloads</a>

      <div id="repository_desc_wrapper">
      <div id="repository_description" rel="repository_description_edit">
        
      </div>

      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/metacortex/harvest_site/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="ff53f3e8796f3d31b2a5bf999f2d8d942b73d873" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://" rel="nofollow"></a></p>
      </div>

      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/metacortex/harvest_site/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="ff53f3e8796f3d31b2a5bf999f2d8d942b73d873" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>
      </div>
      <div class="rule editable-only"></div>
            <div id="url_box" class="url-box">
        <ul class="clone-urls">
          
            
              <li id="private_clone_url"><a href="git@github.com:metacortex/harvest_site.git" data-permissions="Read+Write">SSH</a></li>
            
            <li id="http_clone_url"><a href="https://duecorda@github.com/metacortex/harvest_site.git" data-permissions="Read+Write">HTTP</a></li>
            <li id="public_clone_url"><a href="git://github.com/metacortex/harvest_site.git" data-permissions="Read-Only">Git Read-Only</a></li>
          
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://assets3.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://assets3.github.com/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


        

      </div><!-- /.pagehead -->

      





<script type="text/javascript">
  GitHub.downloadRepo = '/metacortex/harvest_site/archives/master'
  GitHub.revType = "master"

  GitHub.controllerName = "blob"
  GitHub.actionName     = "show"
  GitHub.currentAction  = "blob#show"

  
    GitHub.hasWriteAccess = true
    GitHub.hasAdminAccess = false
    GitHub.watchingRepo = true
    GitHub.ignoredRepo = false
    GitHub.hasForkOfRepo = "duecorda/harvest_site"
    GitHub.hasForked = true
  

  
</script>






<div class="flash-messages"></div>


  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/metacortex/harvest_site/commit/d1f00964872365d63e586460250e1d38acb11db1">show first board of folder</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img src="https://secure.gravatar.com/avatar/ae1c93ceb4d3d79a1db8979382b1d59d?s=140&d=https://github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="30" height="30"  />
        </div>
        <div class="name"><a href="/metacortex">metacortex</a> <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2011-02-21 08:06:18">Mon Feb 21 08:06:18 -0800 2011</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/metacortex/harvest_site/commit/d1f00964872365d63e586460250e1d38acb11db1" hotkey="c">d1f00964872365d63e58</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/metacortex/harvest_site/tree/d1f00964872365d63e586460250e1d38acb11db1" hotkey="t">80c7d8fd60fcb908f643</a><br />
      
        <span>p</span>arent&nbsp;
        
        <a href="/metacortex/harvest_site/tree/331c68690fc0422f10ec6120b5f7c29ad245366f" hotkey="p">331c68690fc0422f10ec</a>
      

    </div>
  </div>

    </div>
  </div>



  <div id="slider">

  

    <div class="breadcrumb" data-path="app/controllers/folders_controller.rb/">
      <b><a href="/metacortex/harvest_site/tree/d1f00964872365d63e586460250e1d38acb11db1">harvest_site</a></b> / <a href="/metacortex/harvest_site/tree/d1f00964872365d63e586460250e1d38acb11db1/app">app</a> / <a href="/metacortex/harvest_site/tree/d1f00964872365d63e586460250e1d38acb11db1/app/controllers">controllers</a> / folders_controller.rb       <span style="display:none" id="clippy_869">app/controllers/folders_controller.rb</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://assets3.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_869&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://assets3.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_869&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="app/controllers/folders_controller.rb/">
        
          <ul class="big-actions">
            
            <li><a class="file-edit-link minibutton" href="/metacortex/harvest_site/file-edit/__current_ref__/app/controllers/folders_controller.rb"><span>Edit this file</span></a></li>
          </ul>
        

        <div id="files">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://assets0.github.com/images/icons/txt.png?92432785e9fc333235be9636fdcfbe129a830779" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                
                  <span>64 lines (53 sloc)</span>
                
                <span>1.503 kb</span>
              </div>
              <ul class="actions">
                <li><a href="/metacortex/harvest_site/raw/master/app/controllers/folders_controller.rb" id="raw-url">raw</a></li>
                
                  <li><a href="/metacortex/harvest_site/blame/master/app/controllers/folders_controller.rb">blame</a></li>
                
                <li><a href="/metacortex/harvest_site/commits/master/app/controllers/folders_controller.rb">history</a></li>
              </ul>
            </div>
            
  <div class="data type-ruby">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
</pre>
          </td>
          <td width="100%">
            
              
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c1"># encoding: UTF-8</span></div><div class='line' id='LC2'><span class="k">class</span> <span class="nc">FoldersController</span> <span class="o">&lt;</span> <span class="no">ApplicationController</span></div><div class='line' id='LC3'><br/></div><div class='line' id='LC4'>	<span class="n">before_filter</span> <span class="ss">:admin_required</span><span class="p">,</span> <span class="ss">:only</span> <span class="o">=&gt;</span> <span class="o">[</span> <span class="ss">:create</span><span class="p">,</span> <span class="ss">:edit</span><span class="p">,</span> <span class="ss">:update</span><span class="p">,</span> <span class="ss">:destroy</span><span class="p">,</span> <span class="ss">:sort</span> <span class="o">]</span></div><div class='line' id='LC5'>	<span class="n">before_filter</span> <span class="ss">:find_supers</span><span class="p">,</span> <span class="ss">:except</span> <span class="o">=&gt;</span> <span class="o">[</span> <span class="ss">:create</span><span class="p">,</span> <span class="ss">:sort</span> <span class="o">]</span></div><div class='line' id='LC6'>	<span class="n">after_filter</span>	<span class="ss">:store_location</span><span class="p">,</span> <span class="ss">:only</span> <span class="o">=&gt;</span> <span class="o">[</span> <span class="ss">:show</span> <span class="o">]</span></div><div class='line' id='LC7'><br/></div><div class='line' id='LC8'>	<span class="k">def</span> <span class="nf">sort</span></div><div class='line' id='LC9'>		<span class="n">params</span><span class="o">[</span><span class="ss">:folders</span><span class="o">].</span><span class="n">each_with_index</span> <span class="k">do</span> <span class="o">|</span><span class="nb">id</span><span class="p">,</span> <span class="n">i</span><span class="o">|</span></div><div class='line' id='LC10'>			<span class="no">Folder</span><span class="o">.</span><span class="n">update_all</span><span class="p">(</span><span class="o">[</span><span class="s1">&#39;position=?&#39;</span><span class="p">,</span> <span class="n">i</span><span class="o">+</span><span class="mi">1</span><span class="o">]</span><span class="p">,</span> <span class="o">[</span><span class="s1">&#39;id=?&#39;</span><span class="p">,</span> <span class="nb">id</span><span class="o">]</span><span class="p">)</span></div><div class='line' id='LC11'>		<span class="k">end</span></div><div class='line' id='LC12'>		<span class="n">render</span> <span class="ss">:nothing</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC13'>	<span class="k">end</span></div><div class='line' id='LC14'><br/></div><div class='line' id='LC15'>	<span class="k">def</span> <span class="nf">create</span></div><div class='line' id='LC16'>		<span class="n">folder</span> <span class="o">=</span> <span class="no">Folder</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">params</span><span class="o">[</span><span class="ss">:folder</span><span class="o">]</span><span class="p">)</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'>		<span class="k">if</span> <span class="n">folder</span><span class="o">.</span><span class="n">save</span></div><div class='line' id='LC19'>			<span class="c1"># initSortableFolders = @current_user.is_admin? ? javascript_tag(&quot;initSortableFolders();&quot;) : &quot;&quot;</span></div><div class='line' id='LC20'>			<span class="n">render</span> <span class="ss">:update</span> <span class="k">do</span> <span class="o">|</span><span class="n">page</span><span class="o">|</span></div><div class='line' id='LC21'>				<span class="n">page</span><span class="o">.</span><span class="n">insert_html</span> <span class="ss">:bottom</span><span class="p">,</span> <span class="s1">&#39;folders&#39;</span><span class="p">,</span> <span class="ss">:partial</span> <span class="o">=&gt;</span> <span class="s1">&#39;folder&#39;</span><span class="p">,</span> <span class="ss">:locals</span> <span class="o">=&gt;</span> <span class="p">{</span> <span class="ss">:folder</span> <span class="o">=&gt;</span> <span class="n">folder</span> <span class="p">}</span></div><div class='line' id='LC22'>				<span class="n">page</span><span class="o">.</span><span class="n">visual_effect</span> <span class="s1">&#39;pulsate&#39;</span><span class="p">,</span> <span class="n">dom_id</span><span class="p">(</span><span class="n">folder</span><span class="p">),</span> <span class="ss">:duration</span> <span class="o">=&gt;</span> <span class="mi">0</span><span class="o">.</span><span class="mi">75</span></div><div class='line' id='LC23'>				<span class="n">page</span> <span class="o">&lt;&lt;</span> <span class="s2">&quot;resetForm();&quot;</span></div><div class='line' id='LC24'>				<span class="n">page</span> <span class="o">&lt;&lt;</span> <span class="s2">&quot;initSortableFolders();&quot;</span></div><div class='line' id='LC25'>			<span class="k">end</span></div><div class='line' id='LC26'>		<span class="k">else</span></div><div class='line' id='LC27'>			<span class="n">render</span> <span class="ss">:udpate</span> <span class="k">do</span> <span class="o">|</span><span class="n">page</span><span class="o">|</span></div><div class='line' id='LC28'>				<span class="n">page</span><span class="o">.</span><span class="n">alert</span> <span class="n">folder</span><span class="o">.</span><span class="n">errors</span><span class="o">.</span><span class="n">full_messages</span></div><div class='line' id='LC29'>			<span class="k">end</span></div><div class='line' id='LC30'>		<span class="k">end</span></div><div class='line' id='LC31'>	<span class="k">end</span></div><div class='line' id='LC32'><br/></div><div class='line' id='LC33'>	<span class="k">def</span> <span class="nf">show</span></div><div class='line' id='LC34'>		<span class="k">if</span> <span class="vi">@folder</span><span class="o">.</span><span class="n">has_page?</span></div><div class='line' id='LC35'>			<span class="n">redirect_to</span> <span class="o">[</span><span class="vi">@section</span><span class="p">,</span> <span class="vi">@folder</span><span class="p">,</span> <span class="vi">@folder</span><span class="o">.</span><span class="n">pages</span><span class="o">.</span><span class="n">first</span><span class="o">]</span></div><div class='line' id='LC36'>		<span class="k">elsif</span> <span class="vi">@folder</span><span class="o">.</span><span class="n">has_board?</span></div><div class='line' id='LC37'>		  <span class="n">redirect_to</span> <span class="o">[</span><span class="vi">@section</span><span class="p">,</span> <span class="vi">@folder</span><span class="p">,</span> <span class="vi">@folder</span><span class="o">.</span><span class="n">boards</span><span class="o">.</span><span class="n">first</span><span class="o">]</span></div><div class='line' id='LC38'>		<span class="k">end</span></div><div class='line' id='LC39'>	<span class="k">end</span></div><div class='line' id='LC40'><br/></div><div class='line' id='LC41'>	<span class="k">def</span> <span class="nf">edit</span></div><div class='line' id='LC42'>		<span class="n">render</span> <span class="ss">:layout</span> <span class="o">=&gt;</span> <span class="kp">false</span></div><div class='line' id='LC43'>	<span class="k">end</span></div><div class='line' id='LC44'><br/></div><div class='line' id='LC45'>	<span class="k">def</span> <span class="nf">update</span></div><div class='line' id='LC46'>		<span class="vi">@folder</span> <span class="o">=</span> <span class="no">Folder</span><span class="o">.</span><span class="n">find</span><span class="p">(</span><span class="n">params</span><span class="o">[</span><span class="ss">:id</span><span class="o">]</span><span class="p">)</span></div><div class='line' id='LC47'><br/></div><div class='line' id='LC48'>		<span class="k">if</span> <span class="vi">@folder</span><span class="o">.</span><span class="n">update_attributes</span><span class="p">(</span><span class="n">params</span><span class="o">[</span><span class="ss">:folder</span><span class="o">]</span><span class="p">)</span></div><div class='line' id='LC49'>			<span class="n">flash</span><span class="o">[</span><span class="ss">:notice</span><span class="o">]</span> <span class="o">=</span> <span class="s2">&quot;변경되었습니다&quot;</span></div><div class='line' id='LC50'>			<span class="n">render</span> <span class="ss">:update</span> <span class="k">do</span> <span class="o">|</span><span class="n">page</span><span class="o">|</span></div><div class='line' id='LC51'>				<span class="n">page</span><span class="o">.</span><span class="n">redirect_to</span> <span class="n">return_url</span></div><div class='line' id='LC52'>			<span class="k">end</span></div><div class='line' id='LC53'>		<span class="k">else</span></div><div class='line' id='LC54'>		<span class="k">end</span></div><div class='line' id='LC55'>	<span class="k">end</span></div><div class='line' id='LC56'><br/></div><div class='line' id='LC57'>	<span class="kp">private</span></div><div class='line' id='LC58'>		<span class="k">def</span> <span class="nf">find_supers</span></div><div class='line' id='LC59'>			<span class="vi">@folder</span> <span class="o">=</span> <span class="no">Folder</span><span class="o">.</span><span class="n">find</span><span class="p">(</span><span class="n">params</span><span class="o">[</span><span class="ss">:id</span><span class="o">]</span><span class="p">)</span></div><div class='line' id='LC60'>			<span class="vi">@section</span> <span class="o">=</span> <span class="vi">@folder</span><span class="o">.</span><span class="n">section</span></div><div class='line' id='LC61'>		<span class="k">end</span></div><div class='line' id='LC62'><br/></div><div class='line' id='LC63'><span class="k">end</span></div><div class='line' id='LC64'><br/></div></pre></div>
              
            
          </td>
        </tr>
      </table>
    
  </div>


          </div>
        </div>
      </div>
    </div>
  

  </div>


<div class="frame frame-loading" style="display:none;">
  <img src="/images/modules/ajax/big_spinner_336699.gif">
</div>

    </div>
  
      
    </div>

    <div id="footer" class="clearfix">
      <div class="site">
        <div class="sponsor">
          <a href="http://www.rackspace.com" class="logo">
            <img alt="Dedicated Server" src="https://assets0.github.com/images/modules/footer/rackspace_logo.png?v2?92432785e9fc333235be9636fdcfbe129a830779" />
          </a>
          Powered by the <a href="http://www.rackspace.com ">Dedicated
          Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
          Computing</a> of Rackspace Hosting<span>&reg;</span>
        </div>

        <ul class="links">
          <li class="blog"><a href="https://github.com/blog">Blog</a></li>
          <li><a href="http://support.github.com?sso=ijlMAm6bfi-nDbJMd8pi-AUZd5wRYtRhHH57RmroM818bowD8WBJmsOAt_mDy6hIRCKngq5AjWxDsSqFJLZ-tt-xlFLMZU-u6ROQKCp4XspVYnAGkGhNGWZB4cMmchKbK1rt0uDwMkcBApTyzqnBqxqjTxAC925_fV8ijWEIGcwputlRanMbKaWyeq0n9fHs3f_b9S0E0arKJMS8HW4qhEkZDCmSJK9B5wez-UqANLo">Support</a></li>
          <li><a href="https://github.com/training">Training</a></li>
          <li><a href="http://jobs.github.com">Job Board</a></li>
          <li><a href="http://shop.github.com">Shop</a></li>
          <li><a href="https://github.com/contact">Contact</a></li>
          <li><a href="http://develop.github.com">API</a></li>
          <li><a href="http://status.github.com">Status</a></li>
        </ul>
        <ul class="sosueme">
          <li class="main">&copy; 2011 <span id="_rrt" title="0.42980s from fe2.rs.github.com">GitHub</span> Inc. All rights reserved.</li>
          <li><a href="/site/terms">Terms of Service</a></li>
          <li><a href="/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
        </ul>
      </div>
    </div><!-- /#footer -->

    
      
      
        <!-- current locale:  -->
        <div class="locales">
          <div class="site">

            <ul class="choices clearfix limited-locales">
              <li><span class="current">English</span></li>
              
                  <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
              
                  <li><a rel="nofollow" href="?locale=fr">Français</a></li>
              
                  <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
              
                  <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
              
                  <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
              
                  <li><a rel="nofollow" href="?locale=zh">中文</a></li>
              
              <li class="all"><a href="#" class="minibutton btn-forward js-all-locales"><span><span class="icon"></span>See all available languages</span></a></li>
            </ul>

            <div class="all-locales clearfix">
              <h3>Your current locale selection: <strong>English</strong>. Choose another?</h3>
              
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=en">English</a></li>
                  
                      <li><a rel="nofollow" href="?locale=af">Afrikaans</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ca">Català</a></li>
                  
                      <li><a rel="nofollow" href="?locale=cs">Čeština</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
                  
                      <li><a rel="nofollow" href="?locale=es">Español</a></li>
                  
                      <li><a rel="nofollow" href="?locale=fr">Français</a></li>
                  
                      <li><a rel="nofollow" href="?locale=hr">Hrvatski</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=id">Indonesia</a></li>
                  
                      <li><a rel="nofollow" href="?locale=it">Italiano</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
                  
                      <li><a rel="nofollow" href="?locale=nl">Nederlands</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=no">Norsk</a></li>
                  
                      <li><a rel="nofollow" href="?locale=pl">Polski</a></li>
                  
                      <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=sr">Српски</a></li>
                  
                      <li><a rel="nofollow" href="?locale=sv">Svenska</a></li>
                  
                      <li><a rel="nofollow" href="?locale=zh">中文</a></li>
                  
                </ul>
              
            </div>

          </div>
          <div class="fade"></div>
        </div>
      
    

    <script>window._auth_token = "ff53f3e8796f3d31b2a5bf999f2d8d942b73d873"</script>
    

<div id="keyboard_shortcuts_pane" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Open tree</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>p</dt>
        <dd>Open parent</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selected down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selected up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle select target</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column middle">
        <dl class="keyboard-mappings">
          <dt>I</dt>
          <dd>Mark selected as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>U</dt>
          <dd>Mark selected as unread</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>e</dt>
          <dd>Close selected</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Remove selected from view</dd>
        </dl>
      </div><!-- /.column.middle -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div >
    <div class="rule"></div>

    <h3>Source Code Browsing</h3>
    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
      </div>
    </div>
  </div>

</div>
    

    <!--[if IE 8]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie8")
    </script>
    <![endif]-->

    <!--[if IE 7]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie7")
    </script>
    <![endif]-->

    
    <script type='text/javascript'>mpq.push(['identify', 'duecorda']);</script>
    
  </body>
</html>

