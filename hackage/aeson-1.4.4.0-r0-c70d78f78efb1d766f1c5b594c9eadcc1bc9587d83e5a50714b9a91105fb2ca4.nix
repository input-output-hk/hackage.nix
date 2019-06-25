{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      developer = false;
      fast = false;
      bytestring-builder = false;
      cffi = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "aeson"; version = "1.4.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2016 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
      maintainer = "Adam Bergmark <adam@bergmark.nl>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/aeson";
      url = "";
      synopsis = "Fast JSON parsing and encoding";
      description = "A JSON parsing and encoding library optimized for ease of use\nand high performance.\n\nTo get started, see the documentation for the @Data.Aeson@ module\nbelow.\n\n(A note on naming: in Greek mythology, Aeson was the father of Jason.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.base-compat)
          (hsPkgs.time-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.tagged)
          (hsPkgs.primitive)
          (hsPkgs.attoparsec)
          (hsPkgs.dlist)
          (hsPkgs.hashable)
          (hsPkgs.scientific)
          (hsPkgs.th-abstraction)
          (hsPkgs.uuid-types)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0") (hsPkgs.bytestring)) ++ (if flags.bytestring-builder
          then [ (hsPkgs.bytestring) (hsPkgs.bytestring-builder) ]
          else [
            (hsPkgs.bytestring)
            ])) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.6")) (hsPkgs.contravariant)) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.fail)
          ]) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "7.10")) [
          (hsPkgs.nats)
          (hsPkgs.void)
          ];
        };
      tests = {
        "tests" = {
          depends = ((([
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.integer-logarithms)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.base-orphans)
            (hsPkgs.base16-bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.Diff)
            (hsPkgs.filepath)
            (hsPkgs.generic-deriving)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.scientific)
            (hsPkgs.tagged)
            (hsPkgs.template-haskell)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-compat)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid-types)
            (hsPkgs.vector)
            (hsPkgs.quickcheck-instances)
            ] ++ (if flags.bytestring-builder
            then [ (hsPkgs.bytestring) (hsPkgs.bytestring-builder) ]
            else [
              (hsPkgs.bytestring)
              ])) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            ]) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "7.10")) [
            (hsPkgs.nats)
            (hsPkgs.void)
            ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") (hsPkgs.hashable-time);
          };
        };
      };
    }