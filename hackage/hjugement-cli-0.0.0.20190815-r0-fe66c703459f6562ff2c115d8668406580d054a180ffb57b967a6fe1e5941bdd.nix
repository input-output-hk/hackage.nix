{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hjugement-cli"; version = "0.0.0.20190815"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+hjugement@autogeree.net>";
      author = "Julien Moutinho <julm+hjugement@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Majority Judgment and Helios-C command line tool";
      description = "Work in progress command line interface for:\n\n* <https://hackage.haskell.org/package/hjugement hjugement>\n* <https://hackage.haskell.org/package/hjugemen-protocol hjugement-protocol>\n\nRun with --help parameter to read the manual.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hjugement" = {
          depends = [
            (hsPkgs.hjugement)
            (hsPkgs.hjugement-protocol)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc-prim)
            (hsPkgs.lens-family-core)
            (hsPkgs.memory)
            (hsPkgs.pipes)
            (hsPkgs.pipes-aeson)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-group)
            (hsPkgs.pipes-parse)
            (hsPkgs.pipes-safe)
            (hsPkgs.pipes-text)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.symantic-cli)
            (hsPkgs.symantic-document)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }