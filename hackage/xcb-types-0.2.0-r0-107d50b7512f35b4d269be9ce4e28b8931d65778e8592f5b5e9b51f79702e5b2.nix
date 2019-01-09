{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "xcb-types"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Antoine Latter <aslatter@gmail.com>";
      author = "Antoine Latter";
      homepage = "";
      url = "";
      synopsis = "Parses XML files used by the XCB project";
      description = "This package provides types which mirror the structures\nused in the XCB code generation XML files.\nSee project http://xcb.freedesktop.org/ for more information about the XCB\nproject.\nThe XML files describe the data-types, events and requests used by the\nX Protocol, and are used to auto-generate large parts of the XCB project.\nThis package parses these XML files into Haskell data structures.\nIf you want to do something with these XML descriptions but don't want\nto learn XSLT, this package should help.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.xml) (hsPkgs.pretty) (hsPkgs.mtl) ];
        };
      };
    }