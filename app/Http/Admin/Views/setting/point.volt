{% extends 'templates/main.volt' %}

{% block content %}

    {% set consume_rule = point.consume_rule|json_decode %}
    {% set event_rule = point.event_rule|json_decode %}

    <form class="layui-form kg-form" method="POST" action="{{ url({'for':'admin.setting.point'}) }}">
        <fieldset class="layui-elem-field layui-field-title">
            <legend>积分设置</legend>
        </fieldset>
        <div class="layui-form-item">
            <label class="layui-form-label">启用积分</label>
            <div class="layui-input-block">
                <input type="radio" name="enabled" value="1" title="是" {% if point.enabled == "1" %}checked="checked"{% endif %}>
                <input type="radio" name="enabled" value="0" title="否" {% if point.enabled == "0" %}checked="checked"{% endif %}>
            </div>
        </div>
        <fieldset class="layui-elem-field layui-field-title">
            <legend>消费奖励规则</legend>
        </fieldset>
        <div class="layui-form-item">
            <label class="layui-form-label">启用规则</label>
            <div class="layui-input-block">
                <input type="radio" name="consume_rule[enabled]" value="1" title="是" {% if consume_rule.enabled == "1" %}checked="checked"{% endif %}>
                <input type="radio" name="consume_rule[enabled]" value="0" title="否" {% if consume_rule.enabled == "0" %}checked="checked"{% endif %}>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">奖励倍率</label>
            <div class="layui-input-inline">
                <input class="layui-input" type="text" name="consume_rule[rate]" value="{{ consume_rule.rate }}" lay-verify="number">
            </div>
            <div class="layui-form-mid layui-word-aux">奖励积分 ＝ 消费金额 X 奖励倍率</div>
        </div>
        <fieldset class="layui-elem-field layui-field-title">
            <legend>行为奖励规则</legend>
        </fieldset>
        <table class="layui-table kg-table layui-form" style="width:80%;">
            <colgroup>
                <col width="20%">
                <col width="20%">
                <col>
                <col>
            </colgroup>
            <thead>
            <tr>
                <th>行为类型</th>
                <th>启用规则</th>
                <th>奖励积分</th>
                <th>每日上限</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>帐号注册</td>
                <td>
                    <input type="radio" name="event_rule[account_register][enabled]" value="1" title="是" {% if event_rule.account_register.enabled == "1" %}checked="checked"{% endif %}>
                    <input type="radio" name="event_rule[account_register][enabled]" value="0" title="否" {% if event_rule.account_register.enabled == "0" %}checked="checked"{% endif %}>
                </td>
                <td><input class="layui-input" type="text" name="event_rule[account_register][point]" value="{{ event_rule.account_register.point }}" lay-verify="required"></td>
                <td>N/A</td>
            </tr>
            <tr>
                <td>站点访问</td>
                <td>
                    <input type="radio" name="event_rule[site_visit][enabled]" value="1" title="是" {% if event_rule.site_visit.enabled == "1" %}checked="checked"{% endif %}>
                    <input type="radio" name="event_rule[site_visit][enabled]" value="0" title="否" {% if event_rule.site_visit.enabled == "0" %}checked="checked"{% endif %}>
                </td>
                <td><input class="layui-input" type="text" name="event_rule[site_visit][point]" value="{{ event_rule.site_visit.point }}" lay-verify="required"></td>
                <td>N/A</td>
            </tr>
            <tr>
                <td>课程评价</td>
                <td>
                    <input type="radio" name="event_rule[course_review][enabled]" value="1" title="是" {% if event_rule.course_review.enabled == "1" %}checked="checked"{% endif %}>
                    <input type="radio" name="event_rule[course_review][enabled]" value="0" title="否" {% if event_rule.course_review.enabled == "0" %}checked="checked"{% endif %}>
                </td>
                <td><input class="layui-input" type="text" name="event_rule[course_review][point]" value="{{ event_rule.course_review.point }}" lay-verify="required"></td>
                <td>N/A</td>
            </tr>
            <tr>
                <td>课时学习</td>
                <td>
                    <input type="radio" name="event_rule[chapter_study][enabled]" value="1" title="是" {% if event_rule.chapter_study.enabled == "1" %}checked="checked"{% endif %}>
                    <input type="radio" name="event_rule[chapter_study][enabled]" value="0" title="否" {% if event_rule.chapter_study.enabled == "0" %}checked="checked"{% endif %}>
                </td>
                <td><input class="layui-input" type="text" name="event_rule[chapter_study][point]" value="{{ event_rule.chapter_study.point }}" lay-verify="required"></td>
                <td>N/A</td>
            </tr>
            <tr>
                <td>微聊讨论</td>
                <td>
                    <input type="radio" name="event_rule[im_discuss][enabled]" value="1" title="是" {% if event_rule.im_discuss.enabled == "1" %}checked="checked"{% endif %}>
                    <input type="radio" name="event_rule[im_discuss][enabled]" value="0" title="否" {% if event_rule.im_discuss.enabled == "0" %}checked="checked"{% endif %}>
                </td>
                <td><input class="layui-input" type="text" name="event_rule[im_discuss][point]" value="{{ event_rule.im_discuss.point }}" lay-verify="required"></td>
                <td>N/A</td>
            </tr>
            </tbody>
        </table>
        <br>
        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="true" lay-filter="go">提交</button>
                <button type="button" class="kg-back layui-btn layui-btn-primary">返回</button>
            </div>
        </div>
    </form>

{% endblock %}