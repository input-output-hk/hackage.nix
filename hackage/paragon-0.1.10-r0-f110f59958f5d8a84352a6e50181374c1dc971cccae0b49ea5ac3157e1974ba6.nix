{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "paragon";
        version = "0.1.10";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <niklas.broberg@chalmers.se>";
      author = "Niklas Broberg";
      homepage = "";
      url = "";
      synopsis = "Paragon";
      description = "Paragon suite";
      buildType = "Simple";
    };
    components = {
      "paragon" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.pretty)
          (hsPkgs.cpphs)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.uniplate)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.th-lift)
          (hsPkgs.template-haskell)
        ] ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "parac" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.pretty)
            (hsPkgs.cpphs)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.uniplate)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.th-lift)
            (hsPkgs.template-haskell)
          ] ++ (if flags.base4
            then [
              (hsPkgs.base)
              (hsPkgs.syb)
            ]
            else [ (hsPkgs.base) ]);
          build-tools = [
            (hsPkgs.buildPackages.alex)
          ];
        };
      };
    };
  }