{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "render-utf8"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/render-utf8#readme";
      url = "";
      synopsis = "Simple Utf8 wrapper for ByteString Builder with conversion classes";
      description = "Simple Utf8 wrapper for ByteString Builder with conversion classes. Please see the README on GitHub at <https://github.com/cdornan/render-utf8#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.fmt)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      };
    }