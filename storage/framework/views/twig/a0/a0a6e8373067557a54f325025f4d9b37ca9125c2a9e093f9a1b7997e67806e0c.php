<?php

/* anomaly.field_type.wysiwyg::upload/partials/body */
class __TwigTemplate_1f5482963fc706956a54737630531a59436aa9e853e5547db505376201ddb5a4 extends TwigBridge\Twig\Template
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
        echo "<div class=\"modal-body\">

    <div class=\"dropzone\"
         data-folder=\"";
        // line 4
        echo twig_escape_filter($this->env, $this->getAttribute(($context["folder"] ?? null), "id", array()), "html", null, true);
        echo "\"
         data-icon=\"";
        // line 5
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('icon')->getCallable(), array("upload")));
        echo "\"
         data-max-size=\"";
        // line 6
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('max_upload_size')->getCallable(), array()), "html", null, true);
        echo "\"
         data-mode=\"";
        // line 7
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('input_get')->getCallable(), array("mode", "file")), "html", null, true);
        echo "\"
         data-message=\"";
        // line 8
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array("anomaly.field_type.wysiwyg::message.upload")), "html", null, true);
        echo "\"
         data-loading=\"";
        // line 9
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array("anomaly.field_type.wysiwyg::message.loading")), "html", null, true);
        echo "\"
         data-uploading=\"";
        // line 10
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array("anomaly.field_type.wysiwyg::message.uploading")), "html", null, true);
        echo "\"
         data-max-parallel=\"";
        // line 11
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('setting_value')->getCallable(), array("anomaly.module.files::max_parallel_uploads", 3)), "html", null, true);
        echo "\"
         data-allowed=\"";
        // line 12
        echo twig_escape_filter($this->env, (($this->getAttribute($this->getAttribute(($context["folder"] ?? null), "allowed_types", array()), "value", array())) ? (("." . twig_join_filter($this->getAttribute($this->getAttribute(($context["folder"] ?? null), "allowed_types", array()), "value", array()), ",."))) : ("")), "html", null, true);
        echo "\"></div>

    <div class=\"uploads\"></div>

</div>";
    }

    public function getTemplateName()
    {
        return "anomaly.field_type.wysiwyg::upload/partials/body";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  56 => 12,  52 => 11,  48 => 10,  44 => 9,  40 => 8,  36 => 7,  32 => 6,  28 => 5,  24 => 4,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"modal-body\">

    <div class=\"dropzone\"
         data-folder=\"{{ folder.id }}\"
         data-icon=\"{{ icon('upload')|escape }}\"
         data-max-size=\"{{ max_upload_size() }}\"
         data-mode=\"{{ input_get('mode', 'file') }}\"
         data-message=\"{{ trans('anomaly.field_type.wysiwyg::message.upload') }}\"
         data-loading=\"{{ trans('anomaly.field_type.wysiwyg::message.loading') }}\"
         data-uploading=\"{{ trans('anomaly.field_type.wysiwyg::message.uploading') }}\"
         data-max-parallel=\"{{ setting_value('anomaly.module.files::max_parallel_uploads', 3) }}\"
         data-allowed=\"{{ folder.allowed_types.value ? '.' ~ folder.allowed_types.value|join(',.') }}\"></div>

    <div class=\"uploads\"></div>

</div>", "anomaly.field_type.wysiwyg::upload/partials/body", "");
    }
}
