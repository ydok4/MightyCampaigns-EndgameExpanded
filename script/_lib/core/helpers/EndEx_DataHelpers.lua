function ConcatTableWithKeys(destinationTable, sourceTable)
    for key, value in pairs(sourceTable) do
        destinationTable[key] = value;
    end
end

function ConcatTable(destinationTable, sourceTable)
    for key, value in pairs(sourceTable) do
        destinationTable[#destinationTable + 1] = value;
    end
end

function Roll100(passValue)
    return Random(99) < passValue;
end

function TableHasAnyValue(table)
    if table == nil then
        return false;
    end
    for key, value in pairs(table) do
        return true;
    end
    return false;
end

function TableHasKey(table, keyToCheck)
    for key, value in pairs(table) do
        if key == keyToCheck then
            return true;
        end
    end
    return false;
end

function Random(limit, start)
    if not start then
        start = 1;
    end
    return cm:random_number(limit, start);
end

function GetRandomObjectFromList(objectList)
    local weightedList = _G.weighted_list:new();
    for key, data in pairs(objectList) do
        weightedList:add_item(data, 1);
    end

    local result = weightedList:random_select();
    return result;
end

function GetRandomObjectKeyFromList(objectList)
    if _G.weighted_list == nil then
		out("Normal weighted list is nil");
	end
    local weightedList = weighted_list:new();
    for key, data in pairs(objectList) do
        weightedList:add_item(key, 1);
    end

    local result = weightedList:random_select();
    return result;
end

function GetRandomItemFromWeightedList(items, returnKey)
    local weightedList = _G.weighted_list:new();
    for key, data in pairs(items) do
        if returnKey == true then
            weightedList:add_item(key, data["Weighting"]);
        else
            weightedList:add_item(data, data["Weighting"]);
        end
    end

    local result = weightedList:weighted_select();
    return result;
end

function FindTableObjectByKeyPartial(objectList, partialValue)
    for key, value in pairs(objectList) do
        if string.match(key, partialValue) then
            return value;
        end
    end
end

function CreateValidLuaTableKey(value)
    -- This removes any spaces within names, eg the surname "Von Carstein";
    -- Otherwise the key is invalid and the character won't be tracked
    value = value:gsub("%s+", "");
    -- This replaces any apostrophes in names with _
    value = value:gsub("'", "_");
    value = value:gsub("-", "_");
    value = value:gsub("á", "a");
    value = value:gsub("à", "a");
    value = value:gsub("â", "a");
    value = value:gsub("é", "e");
    value = value:gsub("í", "i");
    value = value:gsub("ó", "o");
    value = value:gsub("‘", "_");
    value = value:gsub(",", "_");
    value = value:gsub("&", "and");
    return value;
end

function GetKeysFromTable(tableWithKeys)
    local tableKeys = {};
    for key, value in pairs(tableWithKeys) do
        tableKeys[#tableKeys + 1] = key;
    end
    return tableKeys;
end

function GetMatchingKeyMatchingLocalisedString(keys, stringToMatch, keyPrefix)
    for index, key in pairs(keys) do
        if stringToMatch == effect.get_localised_string(keyPrefix..key) then
            return key;
        end
    end
    return nil;
end