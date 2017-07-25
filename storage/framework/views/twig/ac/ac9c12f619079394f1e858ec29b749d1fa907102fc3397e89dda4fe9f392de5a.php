<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/boolean-field_type/resources/views/radio.twig */
class __TwigTemplate_12ee9842d527a2e6af16ef4d030ede3bf4144f1de0217d4b9b6ddc48114911ce extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<div class=\"custom-inputs-stacked\" ";
        echo call_user_func_array($this->env->getFunction('html_attributes')->getCallable(), array("attributes", $this->getAttribute(($context["field_type"] ?? null), "attributes", array())));
        echo ">

    <label class=\"";
        // line 3
        echo " custom-radio\">
        <input
                type=\"radio\"
                value=\"true\"
                name=\"";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "input_name", array()), "html", null, true);
        echo "\"
                ";
        // line 8
        echo (($this->getAttribute(($context["field_type"] ?? null), "is_true", array())) ? ("checked") : (""));
        echo ">

        <span class=\"";
        // line 10
        echo "\"></span>

        ";
        // line 12
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array((($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "on_text", array())) ? ($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "on_text", array())) : ("anomaly.field_type.boolean::choice.yes")))), "html", null, true);
        echo "
    </label>

    <br>

    <label class=\"";
        // line 17
        echo " custom-radio\">
        <input
                type=\"radio\"
                value=\"false\"
                name=\"";
        // line 21
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "input_name", array()), "html", null, true);
        echo "\"
                ";
        // line 22
        echo (($this->getAttribute(($context["field_type"] ?? null), "is_false", array())) ? ("checked") : (""));
        echo ">

        <span class=\"";
        // line 24
        echo "\"></span>

        ";
        // line 26
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array((($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "off_text", array())) ? ($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "off_text", array())) : ("anomaly.field_type.boolean::choice.no")))), "html", null, true);
        echo "
    </label>

</div>
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/boolean-field_type/resources/views/radio.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  71 => 26,  67 => 24,  62 => 22,  58 => 21,  52 => 17,  44 => 12,  40 => 10,  35 => 8,  31 => 7,  25 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"custom-inputs-stacked\" {{ html_attributes(field_type.attributes) }}>

    <label class=\"{#custom-control#} custom-radio\">
        <input
                type=\"radio\"
                value=\"true\"
                name=\"{{ field_type.input_name }}\"
                {{ field_type.is_true ? 'checked' }}>

        <span class=\"{#custom-control-indicator#}\"></span>

        {{ trans(field_type.config.on_text ?: 'anomaly.field_type.boolean::choice.yes') }}
    </label>

    <br>

    <label class=\"{#custom-control#} custom-radio\">
        <input
                type=\"radio\"
                value=\"false\"
                name=\"{{ field_type.input_name }}\"
                {{ field_type.is_false ? 'checked' }}>

        <span class=\"{#custom-control-indicator#}\"></span>

        {{ trans(field_type.config.off_text ?: 'anomaly.field_type.boolean::choice.no') }}
    </label>

</div>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/boolean-field_type/resources/views/radio.twig", "");
    }
}
