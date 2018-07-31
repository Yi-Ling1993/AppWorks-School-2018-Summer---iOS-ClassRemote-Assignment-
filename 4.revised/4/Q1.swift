//
//  Q1.swift
//  4
//
//  Created by 劉奕伶 on 2018/7/29.
//  Copyright © 2018年 Appwork School. All rights reserved.
//

import Foundation



/*
為了要format CurrentWeather的data.
如果直接加在CurrentWeather裏，model的工作就多了要怎麼呈現這些資料，而這並不是model的工作
所以如果另外開了CurrentWeatherViewModel，它可以接收CurrentWeather的instance，format然後controller可以直接使用這些物件然後在views呈現出來，不需要再更動原來的model
*/
