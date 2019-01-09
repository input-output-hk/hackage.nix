{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "WebBits-Html"; version = "1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007-2009 Arjun Guha and Spiridon Eliopoulos";
      maintainer = "Arjun Guha <arjun@cs.brown.edu>";
      author = "Arjun Guha, Spiridon Eliopoulos";
      homepage = "http://www.cs.brown.edu/research/plt/";
      url = "";
      synopsis = "JavaScript analysis tools";
      description = "WebBits is a collection of libraries for working with JavaScript embeded in\nHTML files.  Highlights include:\n\n* @BrownPLT.JavaScript.Crawl@ returns all JavaScript in an HTML page, including\nJavaScript from imported script files (@\\<script src=...\\>@).\n\n* @BrownPLT.JavaScript.Environment@ annotates JavaScript syntax with its\nstatic environment and returns a list of free identifiers.\n\n* @BrownPLT.Html.Parser@ is a permissive HTML parser.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.syb)
          (hsPkgs.WebBits)
          ];
        };
      };
    }