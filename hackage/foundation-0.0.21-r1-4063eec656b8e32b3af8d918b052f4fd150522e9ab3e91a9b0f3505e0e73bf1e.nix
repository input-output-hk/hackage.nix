{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      experimental = false;
      bench-all = false;
      minimal-deps = false;
      bounds-check = false;
      doctest = false;
      linktest = false;
      };
    package = {
      specVersion = "1.18";
      identifier = { name = "foundation"; version = "0.0.21"; };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Vincent Hanquez <vincent@snarc.org>, 2017- Foundation Maintainers";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/haskell-foundation/foundation";
      url = "";
      synopsis = "Alternative prelude with batteries and no dependencies";
      description = "A custom prelude with no dependencies apart from base.\n\nThis package has the following goals:\n\n* provide a base like sets of modules that provide a consistent set of features and bugfixes across multiple versions of GHC (unlike base).\n\n* provide a better and more efficient prelude than base's prelude.\n\n* be self-sufficient: no external dependencies apart from base.\n\n* provide better data-types: packed unicode string by default, arrays.\n\n* Better numerical classes that better represent mathematical thing (No more all-in-one Num).\n\n* Better I/O system with less Lazy IO\n\n* Usual partial functions distinguished through type system";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."basement" or ((hsPkgs.pkgs-errors).buildDepError "basement"))
          ] ++ (if compiler.isGhc && (compiler.version).lt "8.0"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32")));
        buildable = true;
        };
      tests = {
        "check-foundation" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."basement" or ((hsPkgs.pkgs-errors).buildDepError "basement"))
            (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
            ];
          buildable = true;
          };
        "foundation-link" = {
          depends = (pkgs.lib).optionals (flags.linktest) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = if flags.linktest then true else false;
          };
        "doctest" = {
          depends = (pkgs.lib).optionals (!flags.minimal-deps) ((pkgs.lib).optionals (flags.doctest) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ]);
          buildable = if flags.minimal-deps
            then false
            else if flags.doctest then true else false;
          };
        };
      benchmarks = {
        "bench" = {
          depends = (pkgs.lib).optionals (!(flags.minimal-deps || compiler.isGhc && (compiler.version).lt "7.10")) ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."basement" or ((hsPkgs.pkgs-errors).buildDepError "basement"))
            (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
            ] ++ (pkgs.lib).optionals (flags.bench-all) [
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ]);
          buildable = if flags.minimal-deps || compiler.isGhc && (compiler.version).lt "7.10"
            then false
            else true;
          };
        };
      };
    }