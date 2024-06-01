import 'package:arch_empower/arch_empower.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyArch(),
    );
  }
}

class MyArch extends StatelessWidget {
  const MyArch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
              child: Graph(
            title: 'arch_empower - 架构赋能',
            child: C(
              children: [
                Box(title: '顶层设计'),
                R(children: [
                  Group(
                      title: "边界赛道",
                      child: R(children: [
                        C(children: [
                          Box(title: '用户痛点'),
                          Box(title: '用户痒点'),
                          Box(title: '用户爽点'),
                        ]),
                        Box(title: '✌️葵花点穴手✌️'),
                      ])),
                  C(children: [
                    Box(title: '作为架构师，没有架构图，再好的戏都出不来'),
                    Group(
                        title: "核心打法",
                        child: C(children: [
                          Box(title: '🥊组🥊合🥊拳🥊'),
                          Box(title: '🚀增长引擎🚀'),
                        ])),
                  ]),
                  Group(
                    title: '借东风',
                    child: C(children: [
                      Box(title: '人优我变'),
                      Box(title: '绝境逢生'),
                      Box(title: '🌪️风🌪️口🌪️'),
                    ]),
                  )
                ]),
                
                Box(title: '底层逻辑')
              ],
            ),
          ))),
    );
  }
}
