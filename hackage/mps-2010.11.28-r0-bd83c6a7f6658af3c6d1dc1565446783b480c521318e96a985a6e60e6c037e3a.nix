{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "mps"; version = "2010.11.28"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/mps/";
      url = "";
      synopsis = "simply oo";
      description = "DSL that allows one to write Haskell from left to right";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.regexpr)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.directory)
          (hsPkgs.old-locale)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.monoid-owns)
          ];
        };
      };
    }