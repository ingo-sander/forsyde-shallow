-----------------------------------------------------------------------------
-- |
-- Module      :  ForSyDe.Backend.VHDL.Constants
-- Copyright   :  (c) The ForSyDe Team 2007
-- License     :  BSD-style (see the file LICENSE)
-- 
-- Maintainer  :  ecs_forsyde_development@ict.kth.se
-- Stability   :  experimental
-- Portability :  portable
--
-- Constants used in the VHDL backend
--
-----------------------------------------------------------------------------
module ForSyDe.Backend.VHDL.Constants where

import ForSyDe.Backend.VHDL.AST

-- | Standard context clause used in all generated vhdl files. It imports
commonContextClause :: [ContextItem]
commonContextClause = 
  [Library forsydeId, 
   Library ieeeId,
   Use     $ NSelected (NSimple forsydeId :.: SSimple typesId) :.: All,
   Use     $ NSelected (NSimple ieeeId :.: SSimple std_logic_1164Id) :.: All,
   Use     $ NSelected (NSimple ieeeId :.: SSimple numeric_stdId) :.: All]
 where forsydeId = unsafeVHDLBasicId "forsyde" 
       ieeeId = unsafeVHDLBasicId "ieee"
       typesId = unsafeVHDLBasicId "types"
       std_logic_1164Id = unsafeVHDLBasicId "std_logic_1164"
       numeric_stdId = unsafeVHDLBasicId "numeric_std"

--------------
-- Identifiers
--------------

-- | reset and clock signal identifiers in String form
resetStr, clockStr :: String
resetStr = "resetn"
clockStr = "clock"

-- | reset and clock signal identifiers in basic VHDLId form
resetId, clockId :: VHDLId
resetId = unsafeVHDLBasicId resetStr
clockId = unsafeVHDLBasicId clockStr


-- | \"types\" identifier
typesId :: VHDLId
typesId = unsafeVHDLBasicId "types"

-- | work identifier
workId :: VHDLId
workId = unsafeVHDLBasicId "work"

-- | range attribute identifier
rangeId :: VHDLId
rangeId = unsafeVHDLBasicId "range"

-- | default function identifier
defaultId :: VHDLId
defaultId = unsafeVHDLBasicId "default"


-- AsbtExt function identifiers

-- | absent function identifier
absentId :: VHDLId
absentId = unsafeVHDLBasicId "absent"

-- | present function identifier
presentId :: VHDLId
presentId = unsafeVHDLBasicId "present"

-- | fromAbstExt function identifier
fromAbstExtId :: VHDLId
fromAbstExtId = unsafeVHDLBasicId "fromAbstExt"

-- | unsafeFromAbstExt function identifier
unsafeFromAbstExtId :: VHDLId
unsafeFromAbstExtId = unsafeVHDLBasicId "unsafeFromAbstExt"

-- | value element identifier
valueId :: VHDLId
valueId = unsafeVHDLBasicId "value"

-- | value element suffix
valueSuffix :: Suffix
valueSuffix = SSimple valueId

-- | isPresent function and element identifier
isPresentId :: VHDLId
isPresentId = unsafeVHDLBasicId "isPresent"

-- | isAbsent function identifier
isAbsentId :: VHDLId
isAbsentId = unsafeVHDLBasicId "isAbsent"

-- FSVec function identifiers

-- | ex (operator ! in original Haskell source) function identifier
exId :: VHDLId
exId = unsafeVHDLBasicId "ex"

-- | sel (function select in original Haskell source) function identifier
selId :: VHDLId
selId = unsafeVHDLBasicId "sel"

-- | empty function identifier
emptyId :: VHDLId
emptyId = unsafeVHDLBasicId "empty"


-- | length function identifier
lengthId :: VHDLId
lengthId = unsafeVHDLBasicId "length"


-- | null function identifier
nullId :: VHDLId
nullId = unsafeVHDLBasicId "null"


-- | replace function identifier
replaceId :: VHDLId
replaceId = unsafeVHDLBasicId "replace"


-- | head function identifier
headId :: VHDLId
headId = unsafeVHDLBasicId "head"


-- | last function identifier
lastId :: VHDLId
lastId = unsafeVHDLBasicId "last"


-- | init function identifier
initId :: VHDLId
initId = unsafeVHDLBasicId "init"


-- | tail function identifier
tailId :: VHDLId
tailId = unsafeVHDLBasicId "tail"


-- | take function identifier
takeId :: VHDLId
takeId = unsafeVHDLBasicId "take"


-- | drop function identifier
dropId :: VHDLId
dropId = unsafeVHDLBasicId "drop"

-- | shiftl function identifier
shiftlId :: VHDLId
shiftlId = unsafeVHDLBasicId "shiftl"

-- | shiftr function identifier
shiftrId :: VHDLId
shiftrId = unsafeVHDLBasicId "shiftr"

-- | rotl function identifier
rotlId :: VHDLId
rotlId = unsafeVHDLBasicId "rotl"

-- | reverse function identifier
rotrId :: VHDLId
rotrId = unsafeVHDLBasicId "rotr"

-- | reverse function identifier
reverseId :: VHDLId
reverseId = unsafeVHDLBasicId "reverse"


-- | copy function identifier
copyId :: VHDLId
copyId = unsafeVHDLBasicId "copy"


--------
-- Names
--------

defaultSN :: VHDLName
defaultSN = NSimple defaultId

------------------
-- VHDL type marks
------------------

-- | Stardard logic type mark
std_logicTM :: TypeMark
std_logicTM = unsafeVHDLBasicId "std_logic"

-- | boolean type mark
booleanTM :: TypeMark
booleanTM = unsafeVHDLBasicId "boolean"

-- | natural typemark
naturalTM :: TypeMark
naturalTM = unsafeVHDLBasicId "natural"

-- | int32 typemark (defined in ForSyDe's VHDL library)
int64TM :: TypeMark
int64TM = unsafeVHDLBasicId "int64"

-- | int32 typemark (defined in ForSyDe's VHDL library)
int32TM :: TypeMark
int32TM = unsafeVHDLBasicId "int32"

-- | int32 typemark (defined in ForSyDe's VHDL library)
int16TM :: TypeMark
int16TM = unsafeVHDLBasicId "int16"

-- | int8 typemark (defined in ForSyDe's VHDL library)
int8TM :: TypeMark
int8TM = unsafeVHDLBasicId "int8"

--------------
-- Expressions
--------------

-- | true expression
trueExpr :: Expr
trueExpr = PrimName (NSimple $ unsafeVHDLBasicId "true")
 
-- | false expression
falseExpr :: Expr
falseExpr = PrimName (NSimple $ unsafeVHDLBasicId "false")

-- | \'0\' bit expression
lowExpr :: Expr
lowExpr = PrimLit "'0'"

-- | \'1\' bit expression
highExpr :: Expr
highExpr = PrimLit "'1'"

-- | tup string record suffix
tupStrSuffix :: Int -> String
tupStrSuffix n = "tup_" ++ show n

-- | tup VHLID record suffix
tupVHDLIdSuffix :: Int -> VHDLId
tupVHDLIdSuffix = unsafeVHDLBasicId . tupStrSuffix

-- | tup VHDLName suffix
tupVHDLSuffix :: Int -> Suffix
tupVHDLSuffix = SSimple . tupVHDLIdSuffix