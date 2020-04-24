{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "file-embed-lzma"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2018 Futurice, 2018 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/file-embed-lzma";
      url = "";
      synopsis = "Use Template Haskell to embed (LZMA compressed) data.";
      description = "The @file-embed@ package let's embed file and dir contents.\n\nThis package is similar, but also compresses the embedded contents with LZMA.\nThat makes resulting object files smaller, at the cost of start up decompression.\n\nThere's also an 'embedRecursiveDir' function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."lzma" or ((hsPkgs.pkgs-errors).buildDepError "lzma"))
          (hsPkgs."th-lift-instances" or ((hsPkgs.pkgs-errors).buildDepError "th-lift-instances"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."file-embed-lzma" or ((hsPkgs.pkgs-errors).buildDepError "file-embed-lzma"))
            ];
          buildable = true;
          };
        };
      };
    }