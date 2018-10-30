{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "WebBits";
        version = "0.9.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007-2008 Arjun Guha and Spiridon Eliopoulos";
      maintainer = "Arjun Guha <arjun@cs.brown.edu>";
      author = "Arjun Guha, Spiridon Eliopoulos";
      homepage = "http://www.cs.brown.edu/research/plt/";
      url = "";
      synopsis = "JavaScript analysis tools";
      description = "WebBits is a collection of libraries for working with JavaScript embeded in\nHTML files.  Highlights include:\n\n* @WebBits.JavaScript.Crawl@ returns all JavaScript in an HTML page, including\nJavaScript from imported script files (@\\<script src=...\\>@).\n\n* @WebBits.JavaScript.Environment@ annotates JavaScript syntax with its static\nenvironment and returns a list of free identifiers.\n\n* @WebBits.JavaScript.Parser@ is a JavaScript parser that is largely based on\nJavaScript 1.5.\n\n* @WebBits.Html.Parser@ is a permissive HTML parser.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.syb)
        ];
      };
    };
  }