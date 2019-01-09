{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = { name = "shpider"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Johnny Morrice <spoon@killersmurf.com>";
      author = "Johnny Morrice";
      homepage = "http://www.killersmurf.com/projects/shpider";
      url = "";
      synopsis = "Web automation library in Haskell.";
      description = "Shpider is a web automation library for Haskell.   It allows you to quickly write crawlers, and for simple cases ( like following links ) even without reading the page source.\n\nIt has useful features such as turning relative links from a page into absolute links, options to authorize transactions only on a given domain, and the option to only download html documents.\n\nIt also provides a nice syntax for filling out forms.\n\nAn example:\n\n> runShpider \$ do\n>      download \"http://apage.com\"\n>      theForm : _ <- getFormsByAction \"http://anotherpage.com\"\n>      sendForm \$ fillOutForm theForm \$ pairs \$ do\n>            \"occupation\" =: \"unemployed Haskell programmer\"\n>            \"location\" =: \"mother's house\"\n\nShpider contains a patched version of the curl package, to fix cookie handling.  The curl licence is therefore distributed with this package.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.regex-posix)
          (hsPkgs.tagsoup-parsec)
          (hsPkgs.url)
          (hsPkgs.containers)
          (hsPkgs.tagsoup)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          ];
        libs = [ (pkgs."curl") ];
        };
      };
    }