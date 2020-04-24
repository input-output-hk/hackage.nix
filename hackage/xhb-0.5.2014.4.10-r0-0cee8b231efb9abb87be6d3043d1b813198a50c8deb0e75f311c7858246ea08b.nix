{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "xhb"; version = "0.5.2014.4.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Antoine Latter <aslatter@gmail.com>";
      author = "See CONTRIBUTORS file";
      homepage = "https://github.com/aslatter/xhb";
      url = "";
      synopsis = "X Haskell Bindings";
      description = "Provides low-level bindings to the X11 protocol.\n\nSimilar to XCB - the X C Bindings.\n\nThis library is based on version 1.6 of the xcb-proto\npackage.  See http:\\/\\/xcb.freedesktop.org\\/XmlXcb\\/ and\nhttp:\\/\\/xcb.freedesktop.org\\/dist\\/ .";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."Xauth" or ((hsPkgs.pkgs-errors).buildDepError "Xauth"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."byteorder" or ((hsPkgs.pkgs-errors).buildDepError "byteorder"))
          ];
        buildable = true;
        };
      };
    }