{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "biohazard"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010-2017 Udo Stenzel";
      maintainer = "u.stenzel@web.de";
      author = "Udo Stenzel";
      homepage = "https://bitbucket.org/ustenzel/biohazard";
      url = "";
      synopsis = "bioinformatics support library";
      description = "This is a collection of modules I separated from\nvarious bioinformatics tools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.stm)
          (hsPkgs.streaming)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.zlib)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs.bifunctors)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
        };
      };
    }