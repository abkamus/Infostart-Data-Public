﻿
Процедура ОбработкаЗаполнения(ДанныеЗаполнения, СтандартнаяОбработка)
	//{{__КОНСТРУКТОР_ВВОД_НА_ОСНОВАНИИ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	Если ТипЗнч(ДанныеЗаполнения) = Тип("ДокументСсылка.ПриходныйОрдер") Тогда
		// Заполнение шапки
		ПриходныйОрдер = ДанныеЗаполнения.Ссылка;
		Для Каждого ТекСтрокаСписокНоменклатуры Из ДанныеЗаполнения.СписокНоменклатуры Цикл
			НоваяСтрока = СписокНоменклатуры.Добавить();
			НоваяСтрока.Количество = ТекСтрокаСписокНоменклатуры.Количество;
			НоваяСтрока.Товар = ТекСтрокаСписокНоменклатуры.Товар;
		КонецЦикла;
	КонецЕсли;
	//}}__КОНСТРУКТОР_ВВОД_НА_ОСНОВАНИИ
КонецПроцедуры
