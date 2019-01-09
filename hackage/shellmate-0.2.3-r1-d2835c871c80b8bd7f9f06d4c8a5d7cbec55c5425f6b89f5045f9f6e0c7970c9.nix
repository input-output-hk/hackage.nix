{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { download-extras = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "shellmate"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "http://github.com/valderman/shellmate";
      url = "";
      synopsis = "Simple interface for shell scripting in Haskell.";
      description = "Aims to simplify development of cross-platform shell scripts and similar things.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.temporary)
          (hsPkgs.HTTP)
          (hsPkgs.network-uri)
          ] ++ (pkgs.lib).optionals (flags.download-extras) [
          (hsPkgs.feed)
          (hsPkgs.tagsoup)
          (hsPkgs.xml)
          ];
        };
      };
    }