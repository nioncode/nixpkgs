{ cabal, aeson, aesonUtils, either, errors, fclabels, HUnit, hxt
, hxtPickleUtils, jsonSchema, mtl, multipart, random, restStringmap
, restTypes, safe, split, testFramework, testFrameworkHunit, text
, transformers, unorderedContainers, uriEncode, utf8String, uuid
}:

cabal.mkDerivation (self: {
  pname = "rest-core";
  version = "0.31.1";
  sha256 = "1cx1zmy1zr43n9nlrbar828izccpkvrvjkrda03ra9fkcjgd6qy6";
  buildDepends = [
    aeson aesonUtils either errors fclabels hxt hxtPickleUtils
    jsonSchema mtl multipart random restStringmap restTypes safe split
    text transformers unorderedContainers uriEncode utf8String uuid
  ];
  testDepends = [
    HUnit mtl testFramework testFrameworkHunit unorderedContainers
  ];
  meta = {
    description = "Rest API library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
