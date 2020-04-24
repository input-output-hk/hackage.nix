{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tag-stream"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yi.codeplayer@gmail.com";
      author = "yihuang";
      homepage = "http://github.com/yihuang/tag-stream";
      url = "";
      synopsis = "streamlined html tag parser";
      description = "Tag-stream is a library for parsing HTML/XML to a token stream. It can parse unstructured and malformed HTML from the web. It also provides an Enumeratee which can parse streamline html, which means it consumes constant memory. You can start from `tests/Tests.hs` to see what it can do.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
          ];
        buildable = true;
        };
      };
    }