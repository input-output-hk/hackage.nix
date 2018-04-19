{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xml-basic";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "";
        url = "";
        synopsis = "Basics for XML/HTML representation and processing";
        description = "We provide basic data types for XML representation,\nlike names, attributes, entities.\nYes we try hard to get type safe XML handling out of Haskell 98.\nWe also provide information about exceptional HTML tags,\nlike self-closing tags.\nThis package provides common functionality\nthat is both needed in list (tagchup) and tree (wraxml) representations of XML.";
        buildType = "Simple";
      };
      components = {
        xml-basic = {
          depends  = [
            hsPkgs.explicit-exception
            hsPkgs.data-accessor
            hsPkgs.semigroups
            hsPkgs.utility-ht
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.containers
              hsPkgs.base
            ]
            else [
              hsPkgs.base
            ] ++ (if compiler.isJhc
              then [
                hsPkgs.containers
                hsPkgs.applicative
              ]
              else [
                hsPkgs.special-functors
              ]));
        };
      };
    }