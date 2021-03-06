/** -*-c-*-
  This file contains YARV instructions list.

  ----
  This file is auto generated by insns2vm.rb
  DO NOT TOUCH!

  If you want to fix something, you must edit 'template/insns.inc.tmpl'
  or tool/insns2vm.rb
 */


/* BIN : Basic Instruction Name */
#define BIN(n) YARVINSN_##n

enum ruby_vminsn_type {
  BIN(nop)                       = 0,
  BIN(getlocal)                  = 1,
  BIN(setlocal)                  = 2,
  BIN(getspecial)                = 3,
  BIN(setspecial)                = 4,
  BIN(getinstancevariable)       = 5,
  BIN(setinstancevariable)       = 6,
  BIN(getclassvariable)          = 7,
  BIN(setclassvariable)          = 8,
  BIN(getconstant)               = 9,
  BIN(setconstant)               = 10,
  BIN(getglobal)                 = 11,
  BIN(setglobal)                 = 12,
  BIN(putnil)                    = 13,
  BIN(putself)                   = 14,
  BIN(putobject)                 = 15,
  BIN(putspecialobject)          = 16,
  BIN(putiseq)                   = 17,
  BIN(putstring)                 = 18,
  BIN(concatstrings)             = 19,
  BIN(tostring)                  = 20,
  BIN(freezestring)              = 21,
  BIN(toregexp)                  = 22,
  BIN(newarray)                  = 23,
  BIN(duparray)                  = 24,
  BIN(expandarray)               = 25,
  BIN(concatarray)               = 26,
  BIN(splatarray)                = 27,
  BIN(newhash)                   = 28,
  BIN(newrange)                  = 29,
  BIN(pop)                       = 30,
  BIN(dup)                       = 31,
  BIN(dupn)                      = 32,
  BIN(swap)                      = 33,
  BIN(reverse)                   = 34,
  BIN(reput)                     = 35,
  BIN(topn)                      = 36,
  BIN(setn)                      = 37,
  BIN(adjuststack)               = 38,
  BIN(defined)                   = 39,
  BIN(checkmatch)                = 40,
  BIN(checkkeyword)              = 41,
  BIN(trace)                     = 42,
  BIN(defineclass)               = 43,
  BIN(send)                      = 44,
  BIN(opt_str_freeze)            = 45,
  BIN(opt_newarray_max)          = 46,
  BIN(opt_newarray_min)          = 47,
  BIN(opt_send_without_block)    = 48,
  BIN(invokesuper)               = 49,
  BIN(invokeblock)               = 50,
  BIN(leave)                     = 51,
  BIN(throw)                     = 52,
  BIN(jump)                      = 53,
  BIN(branchif)                  = 54,
  BIN(branchunless)              = 55,
  BIN(branchnil)                 = 56,
  BIN(getinlinecache)            = 57,
  BIN(setinlinecache)            = 58,
  BIN(once)                      = 59,
  BIN(opt_case_dispatch)         = 60,
  BIN(opt_plus)                  = 61,
  BIN(opt_minus)                 = 62,
  BIN(opt_mult)                  = 63,
  BIN(opt_div)                   = 64,
  BIN(opt_mod)                   = 65,
  BIN(opt_eq)                    = 66,
  BIN(opt_neq)                   = 67,
  BIN(opt_lt)                    = 68,
  BIN(opt_le)                    = 69,
  BIN(opt_gt)                    = 70,
  BIN(opt_ge)                    = 71,
  BIN(opt_ltlt)                  = 72,
  BIN(opt_aref)                  = 73,
  BIN(opt_aset)                  = 74,
  BIN(opt_aset_with)             = 75,
  BIN(opt_aref_with)             = 76,
  BIN(opt_length)                = 77,
  BIN(opt_size)                  = 78,
  BIN(opt_empty_p)               = 79,
  BIN(opt_succ)                  = 80,
  BIN(opt_not)                   = 81,
  BIN(opt_regexpmatch1)          = 82,
  BIN(opt_regexpmatch2)          = 83,
  BIN(opt_call_c_function)       = 84,
  BIN(bitblt)                    = 85,
  BIN(answer)                    = 86,
  BIN(getlocal_OP__WC__0)        = 87,
  BIN(getlocal_OP__WC__1)        = 88,
  BIN(setlocal_OP__WC__0)        = 89,
  BIN(setlocal_OP__WC__1)        = 90,
  BIN(putobject_OP_INT2FIX_O_0_C_) = 91,
  BIN(putobject_OP_INT2FIX_O_1_C_) = 92,
  VM_INSTRUCTION_SIZE            = 93
};

