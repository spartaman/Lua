//
//  LuaError.swift
//  Lua
//

public enum LuaError: Error {
	case Syntax(String)
	case Runtime(String)
	case MemoryAllocation(String)
	case GarbageCollector(String)
	case MessageHandler(String)
	
	public var description: String {
		switch self {
			case let .Syntax(s):           return ".Syntax: \(s)"
			case let .Runtime(s):          return ".Runtime: \(s)"
			case let .MemoryAllocation(s): return ".MemoryAllocation: \(s)"
			case let .GarbageCollector(s): return ".GarbageCollector: \(s)"
			case let .MessageHandler(s):   return ".MessageHandler: \(s)"
		}
	}
}