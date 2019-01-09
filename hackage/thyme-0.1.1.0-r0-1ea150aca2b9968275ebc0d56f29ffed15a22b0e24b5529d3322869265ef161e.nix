{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { instance-num = true; show-internal = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "thyme"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU, Ashley Yakeley";
      maintainer = "thyme@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/thyme";
      url = "";
      synopsis = "A faster time library";
      description = "A faster time library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.vector-space)
          (hsPkgs.lens)
          (hsPkgs.old-locale)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          ];
        };
      };
    }