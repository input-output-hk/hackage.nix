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
      specVersion = "0";
      identifier = {
        name = "tagsoup";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2006-8, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/tagsoup/";
      url = "";
      synopsis = "Parsing and extracting information from (possibly malformed) HTML documents";
      description = "TagSoup is a library for extracting information out of unstructured HTML code,\nsometimes known as tag-soup. The HTML does not have to be well formed, or render\nproperly within any particular framework. This library is for situations where\nthe author of the HTML is not cooperating with the person trying to extract the\ninformation, but is also not trying to hide the information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "tagsoup" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }